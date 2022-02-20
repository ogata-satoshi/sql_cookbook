#!/bin/bash

# 設定ファイルから変数を読み込む
. ../.config

# データベースを作成する
dropdb --if-exists -U $USER -h $HOST $DATABASE
createdb $DATABASE -U $USER -h $HOST

# テーブルを作成する
psql -f ./create_table.sql -U $USER -d $DATABASE -h $HOST
