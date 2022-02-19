#!/bin/bash
# 設定ファイルから変数を読み込む
. ./.config

# sql ファイルからクエリを作成する
sql1=`cat recipes/$1.sql`
sql2=`cat answers/$1.sql`

# レコードの順番も含めてテストするため row_number() を用いた書き方にしている
if [ "$2" = "order" ];
then
  query="select *, row_number() over () from (${sql1//;/}) as t1 except select *, row_number() over () from (${sql2//;/}) as t2 "
else
  # ORDER BY が含まれていても対応できるようにサブクエリを使用している。
  query="select * from (${sql1//;/}) as t1 except select * from (${sql2//;/}) as t2 "
fi

# クエリと設定を用いて結果を取得
result=`echo "${query}"  | psql -U $USER -d $DATABASE -h $HOST`

# 結果の末尾を見て返ってきたレコード数が0の場合は正解と返す
rows=`echo ${result} | tail -c 9`

correct_result="(0 rows)"
if [ "${rows}" = "${correct_result}" ];
then
  echo '正解!'
else
  echo '不正解'
fi
exit $?
