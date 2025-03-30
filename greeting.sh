#!/bin/bash

# Получить текущее время
HOUR=$(date +%H)

# Вывести приветствие в зависимости от времени суток
if (( HOUR < 6 )); then
  echo "Доброй ночи!"
elif (( HOUR < 12 )); then
  echo "Доброе утро!"
elif (( HOUR < 18 )); then
  echo "Добрый день!"
else
  echo "Добрый вечер!"
fi
