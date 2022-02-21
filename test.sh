#!/bin/bash
# sql ファイルからクエリを作成する
sql1=`cat recipes/$1.sql`
if [ "${sql1}" = "" ]; then
  echo "正解データが存在しません。"
  exit $?
fi
sql2=`cat answers/$1.sql`
if [ "${sql2}" = "" ]; then
  echo "解答データが存在しません"
  exit $?
fi

# * をワイルドカードとして使用しないために必要
set -f

# レコードの順番も含めてテストするため row_number() を用いた書き方にしている
if [ "$2" = "order" ];
then
  query="(select *, row_number() over () from (${sql1//;/}) as t1 except distinct select *, row_number() over () from (${sql2//;/}) as t2) UNION ALL (select *, row_number() over () from (${sql2//;/}) as t3 except distinct select *, row_number() over () from (${sql1//;/}) as t4)"
else
  # ORDER BY が含まれていても対応できるようにサブクエリを使用している。
  query="(select * from (${sql1//;/}) as t1 except distinct select * from (${sql2//;/}) as t2) UNION ALL (select * from (${sql2//;/}) as t3 except distinct select * from (${sql1//;/}) as t4)"
fi

# クエリと設定を用いて結果を取得
result=`echo "${query}" | bq query --use_legacy_sql=false`
echo "${result}"

# 結果が返ってこなければ正解とする
rows=`echo ${result}`
if [ "${rows}" ];
then
  echo '不正解'
else
  echo '正解!'
fi
exit $?
