#!/bin/bash

# Проверка прав администратора
if [ "$EUID" -ne 0 ]; then
    echo "ОШИБКА: Скрипт должен запускаться с правами root!"
    exit 1
fi

# Шаг 1: Обновление системы
echo "▶ Обновление пакетов системы..."
apt update -y && apt upgrade -y
apt autoremove -y

# Шаг 2: Настройка SSH
SSH_PORT=5522 # Укажите желаемый порт
SSH_CONFIG="/etc/ssh/sshd_config"

echo "▶ Настройка SSH..."
# Резервное копирование конфига
cp $SSH_CONFIG $SSH_CONFIG.bak

# Изменение порта и отключение парольной аутентификации
sed -i "s/^#*Port.*/Port $SSH_PORT/" $SSH_CONFIG
sed -i "s/^#*PasswordAuthentication.*/PasswordAuthentication no/" $SSH_CONFIG

# Перезапуск SSH
systemctl restart sshd
echo "SSH: Порт изменен на $SSH_PORT, парольная аутентификация отключена"

# Шаг 3: Настройка UFW
echo "▶ Настройка фаервола..."
apt install ufw -y
ufw --force reset

# Базовые правила
ufw default deny incoming
ufw default allow outgoing

# Разрешение портов
ufw allow $SSH_PORT/tcp
ufw allow 80/tcp
ufw allow 443/tcp

# Включение фаервола
ufw --force enable
echo "Фаервол настроен. Текущие правила:"
ufw status verbose

# Итоговое сообщение
echo -e "\n✔ Настройка завершена!\n"
echo "ВАЖНО:"
echo "1. Для подключения по SSH используйте: ssh -p $SSH_PORT user@server"
echo "2. Убедитесь, что SSH-ключи добавлены на сервер"
echo "3. Текущие открытые порты: $SSH_PORT (SSH), 80 (HTTP), 443 (HTTPS)"
