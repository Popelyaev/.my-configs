#!/bin/bash

# Путь к репозиторию
REPO_DIR="$(cd "$(dirname "$0")"; pwd)"

# Символические ссылки
ln -sf "$REPO_DIR/skhd" ~/.config/
