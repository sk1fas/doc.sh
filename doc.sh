#!/bin/bash

# Проверка: установлен ли Homebrew
if ! command -v brew &> /dev/null; then
    echo "🧰 Homebrew не найден. Устанавливаю..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew уже установлен"
fi

# Установка Docker Desktop
echo "🐳 Устанавливаю Docker Desktop..."
brew install --cask docker

# Запуск Docker Desktop
echo "🚀 Запускаю Docker..."
open /Applications/Docker.app

echo "⏳ Подожди, пока Docker инициализируется (появится кит в строке меню)"
echo "✅ Установка завершена. Проверка версии Docker:"
docker --version || echo "⚠️ Docker ещё не готов. Подожди немного и попробуй снова: docker --version"
