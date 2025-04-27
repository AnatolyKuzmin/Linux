#!/bin/bash

# Проверка аргументов
if [ $# -lt 3 ]; then
  echo "Использование: $0 <путь_к_логу> <шаблон_поиска> <файл_для_результата>"
  exit 1
fi

LOG_FILE="$1"
PATTERN="$2"
OUTPUT_FILE="$3"

# Проверка существования файла лога
if [ ! -f "$LOG_FILE" ]; then
  echo "Ошибка: файл $LOG_FILE не найден"
  exit 2
fi

# Поиск строк по шаблону и запись в файл
grep -E "$PATTERN" "$LOG_FILE" > "$OUTPUT_FILE"

echo "Результат записан в $OUTPUT_FILE"
