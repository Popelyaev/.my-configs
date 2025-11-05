#!/bin/bash

# Путь к репозиторию
REPO_DIR="$(cd "$(dirname "$0")"; pwd)"

# Символические ссылки
ln -sf "$REPO_DIR/vimrc" ~/.vimrc

if [ -d "$HOME/.vim" ] || [ -L "$HOME/.vim" ]; then
  rm -rf "$HOME/.vim"
fi

ln -s "$REPO_DIR/vim" ~/.vim
