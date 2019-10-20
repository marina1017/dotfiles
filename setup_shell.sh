#!/bin/bash
## 導入メモ
# https://qiita.com/nakagawa1017/items/b0ac953f3448a46899fb

## /etc/shellsファイルに「/usr/local/bin/fish」を一番下に入れる
### メモ：pwを要求される
sudo sh -c "echo /usr/local/bin/fish >> /etc/shells"

## ruby2.6.3を入れる(仕事用)
### メモ：パスを通すべき「/Users/marina/.rbenv/shims」は下記コマンドを実行しないと生成されない
rbenv install 2.6.3

echo "パスが通っているか確認する「/Users/{ユーザー名}/.rbenv/shims/ruby」のような感じで出るか"
which ruby

echo "パスが通っているか確認する「/Users/{ユーザー名}/.rbenv/shims/ruby」のような感じで出るか"
which gem

## デフォルトシェルを fish に変更
### メモ：pwを要求される
echo "デフォルトシェルを fish に変更"
chsh -s /usr/local/bin/fish

## ログインシェルを起動
echo "ログインシェルを起動"
fish -l
