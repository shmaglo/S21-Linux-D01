#!/bin/bash

# Проверяем, что передан аргумент для коммита
if [ -z "$1" ]; then
  echo "Usage: $0 <commit_message>"
  exit 1
fi

# Задаем переменные
COM="$1"
BRANCH="develop"  # Имя целевой ветки

# Выполняем команды Git
git add .
git commit -m "$COM"
git push origin "$BRANCH"