#!/bin/bash

# Проверка наличия пути к лог-файлу
if [[ -z "$1" ]]; then
    echo "Использование: $0 /путь/к/лог-файлу"
    exit 1
fi

LOG_FILE="$1"

# Проверка существования лог-файла
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Файл $LOG_FILE не существует."
    exit 1
fi

# Поиск ошибок в лог-файле
ERRORS=$(grep -iE "error|failed" "$LOG_FILE")

# Если ошибки найдены, отправить уведомление
if [[ -n "$ERRORS" ]]; then
    echo "Обнаружены ошибки в файле $LOG_FILE:"
    echo "$ERRORS"

    # Отправка уведомления (для GUI)
    if command -v notify-send &> /dev/null; then
        notify-send -t 5000 -i dialog-error "Обнаружены ошибки!" \
            "Проверьте лог-файл: $LOG_FILE"
    fi

    # Дополнительно можно отправить уведомление по email (пример)
    # mail -s "Ошибки в логе" user@example.com <<< "$ERRORS"
else
    echo "Ошибок не обнаружено в файле $LOG_FILE."
fi
