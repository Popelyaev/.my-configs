#!/bin/bash

# Абсолютный путь к корню репозитория
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Запуск всех *.links.sh скриптов..."

# Ищем и выполняем все скрипты с расширением *.links.sh
find "$REPO_DIR" -type f -name "*.links.sh" | while read script; do
    echo "Выполняется $(basename "$script")..."
    bash "$script"
done

echo "Все ссылки созданы!"
