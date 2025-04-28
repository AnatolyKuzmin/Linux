#!/bin/bash

# Скрипт автоматического резервного копирования с выбором места хранения и ротацией старых копий

# --- Настройки ---

# Источники для резервного копирования (можно добавить свои пути)
# Например: домашние каталоги пользователей, конфигурационные файлы, дампы баз данных
BACKUP_SOURCES=(
  "/home"
  "/etc"
  # Добавьте путь к дампу базы данных, если нужно
)

# Место хранения резервных копий: локальный путь или удалённый сервер (через ssh)
# Пример локального пути:
LOCAL_BACKUP_DIR="/backup"

# Пример удалённого сервера (замените на свои данные)
REMOTE_USER="user"
REMOTE_HOST="backup.example.com"
REMOTE_BACKUP_DIR="/remote/backup/path"

# Выбор места хранения: "local" или "remote"
BACKUP_LOCATION="local"

# Ротация: количество дней хранения резервных копий
RETENTION_DAYS=30

# Имя проекта или метка для резервных копий
PROJECT_NAME="my_backup"

# --- Конец настроек ---

# Текущая дата для именования папок и файлов
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Функция для создания резервной копии файлов с помощью rsync (быстрое обновление)
backup_files() {
  local source_path="$1"
  local dest_path="$2"

  echo "Резервное копирование $source_path в $dest_path"
  rsync -a --delete "$source_path" "$dest_path"
}

# Функция для создания архива с дампом базы данных (пример для MySQL)
backup_database() {
  local db_name="$1"
  local dest_path="$2"

  echo "Создание дампа базы данных $db_name"
  mysqldump --single-transaction --quick --lock-tables=false "$db_name" > "$dest_path/${db_name}_$DATE.sql"
}

# Функция удаления старых резервных копий (ротация)
rotate_backups() {
  local backup_path="$1"
  echo "Удаление резервных копий старше $RETENTION_DAYS дней в $backup_path"
  find "$backup_path" -maxdepth 1 -type d -mtime +$RETENTION_DAYS -exec rm -rf {} \;
}

# Основной блок выполнения

if [ "$BACKUP_LOCATION" == "local" ]; then
  DESTINATION="$LOCAL_BACKUP_DIR/$PROJECT_NAME/$DATE"
  mkdir -p "$DESTINATION"

  # Копируем файлы
  for SRC in "${BACKUP_SOURCES[@]}"; do
    backup_files "$SRC" "$DESTINATION"
  done

  # Пример дампа базы данных (раскомментируйте и укажите имя базы)
  # backup_database "my_database" "$DESTINATION"

  # Ротация старых копий
  rotate_backups "$LOCAL_BACKUP_DIR/$PROJECT_NAME"

elif [ "$BACKUP_LOCATION" == "remote" ]; then
  DESTINATION="$REMOTE_BACKUP_DIR/$PROJECT_NAME/$DATE"

  # Создаем директорию на удаленном сервере
  ssh "$REMOTE_USER@$REMOTE_HOST" "mkdir -p '$DESTINATION'"

  # Копируем файлы через rsync по ssh
  for SRC in "${BACKUP_SOURCES[@]}"; do
    echo "Резервное копирование $SRC на удаленный сервер $REMOTE_HOST:$DESTINATION"
    rsync -az --delete -e ssh "$SRC" "$REMOTE_USER@$REMOTE_HOST:$DESTINATION"
  done

  # Пример дампа базы данных локально, затем копирование на удалённый сервер
  # backup_database "my_database" "/tmp"
  # rsync -az -e ssh "/tmp/my_database_$DATE.sql" "$REMOTE_USER@$REMOTE_HOST:$DESTINATION"
  # rm "/tmp/my_database_$DATE.sql"

  # Ротация на удаленном сервере (удаление папок старше RETENTION_DAYS)
  ssh "$REMOTE_USER@$REMOTE_HOST" "find '$REMOTE_BACKUP_DIR/$PROJECT_NAME' -maxdepth 1 -type d -mtime +$RETENTION_DAYS -exec rm -rf {} \;"

else
  echo "Ошибка: неизвестное место хранения резервных копий: $BACKUP_LOCATION"
  exit 1
fi

echo "Резервное копирование завершено успешно."

exit 0
