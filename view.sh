#!/bin/bashsource .config

# 設定ファイルから変数を取得
source .config

# sql ファイルからクエリを作成する
file_name="$CORRECTS_DIR/$1.sql"

echo "${file_name}"
bq query --use_legacy_sql=False < ${file_name}
