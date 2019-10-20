#!/bin/bash

### メモ
#さきにApp storeにログインしておく
#install.shを実行しておく

### 不可視ファイルを可視化する(再起動したら見える)
defaults write com.apple.finder AppleShowAllFiles TRUE

### Command Line Tools
echo "Command Line Tools for Xcodeのインストール"
xcode-select --install


### homebrew
echo "installing homebrew...homebrewをインストールしています"
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

#echo "run brew update..."
#which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

### .Brewfileに記載されているアプリをインストール
brew bundle --global --verbose