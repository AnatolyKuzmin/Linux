#!/bin/bash

# Задаем переменные
LOGIN=$1
PASSWORD=$2
GROUP=$3
HOME_DIR=$4

# Проверяем, существут ли пользователь
if id -u "$LOGIN" > /dev/null 2>&1; then
  echo "Пользователь $LOGIN уже существует"
  exit 1
fi

# Создаем пользователя
sudo useradd -m -d "$HOME_DIR" -g "$GROUP" -s /bin/bash "$LOGIN"

# Устанавливаем пароль
echo "$LOGIN:$PASSWORD" | sudo chpasswd

# Устанавливаем базовый набор пакетов
sudo apt update
sudo apt install -y nano git curl

echo "Пользователь $LOGIN создан успешно."
