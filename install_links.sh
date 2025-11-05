#!/bin/bash

# Абсолютный путь к корню репозитория
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

# Ищем и выполняем все скрипты с расширением *.links.sh
find "$REPO_DIR" -type f -name "*.links.sh" | while read script; do
    echo "Выполняется $(basename "$script")..."
    bash "$script"
done

echo "Готово"
