# Linux
## Основы Linux
### Введение в Linux
Что такое Linux?<br>
**Linux** - это семейство Unix-подобных операционных систем, построенных на базе ядра Linux.
Дистрибутивы Linux — это операционные системы, которые включают в себя ядро Linux и набор других программ, таких как оболочки, компиляторы и драйверы.<br>
Linux системы распространяются в основном бесплатно в виде различных дистрибутивов в форме, готовой для установки и удобной для сопровождения и обновлени.<br>
<br>
Основные компоненты Linux:<br>
- Загрузчик: Программное обеспечение, управляющее процессом загрузки компьютера1.
- Ядро: Сердце системы, управляющее всеми компонентами ОС и компьютера1.
- Демоны: Служебные программы, работающие в фоновом режиме1.
- Система инициализации: Подсистема, управляющая учетной записью пользователя и демонами1.
- Графический сервер: Подсистема, управляющая отображением графической информации на мониторе1.
- Среда рабочего стола: Пользовательский интерфейс1.
- Приложения: Пользовательские программы, выполняющие различные функции1.<br>
Первый вход в систему. Знакомство с терминалом.<br><br>
Вот несколько простых команд, с которых можно начать знакомство с терминалом:<br>
```pwd``` (print working directory): Показывает текущий каталог.  
```date:``` Показывает текущую дату и время.  
```cal:``` Показывает календарь на текущий месяц.  
```uname -a:``` Показывает информацию о системе.  
```exit:``` Выход из терминала.  
```cd``` Сменить текущий каталог  
```ls``` Показать содержимое каталога  
```mkdir <имя_каталога>``` Создать каталог  
```rmdir <имя_каталога>``` Удалить пустой каталог  
```touch <имя_файла>``` Создать пустой файл<br><br>
Создать структуру каталогов для проектов.<br>
```mkdir ~/projects```<br>
```mkdir ~/projects/web_apps ~/projects/scripts ~/projects/databases ~/projects/documentation```<br>
```mkdir ~/projects/web_apps/frontend ~/projects/web_apps/backend```<br>
```mkdir ~/projects/scripts/bash ~/projects/scripts/python```<br>
```mkdir ~/projects/databases/mysql ~/projects/databases/postgresql```<br>
Проверить созданые каталоги<br>
```tree ~/projects```<br>
### Работа с файлами и текстом
Работа с файлами: cp, mv, rm, cat, less, head, tail.
Редактирование текстовых файлов: nano, vim (основы).
Перенаправление ввода/вывода: >, >>, |.
Поиск файлов: find, locate.
Найти все файлы определенного типа в заданной директории и скопировать их в другую.
### Пользователи и права доступа
Пользователи и группы: useradd, userdel, groupadd, groupdel.
Права доступа: chmod, chown, chgrp.
Разрешения на файлы и каталоги: чтение, запись, выполнение.
Специальные разрешения: SUID, SGID, Sticky Bit.
Создать несколько пользователей и групп, настроить права доступа к файлам и каталогам.
### Пакетный менеджер
Пакетный менеджер: yum (CentOS) / apt (Ubuntu).
Установка, удаление и обновление пакетов.
Работа с репозиториями.
Поиск пакетов.
Установить и настроить веб-сервер (например, Apache или Nginx).
#### Скрипт, автоматизирующий создание пользователя с заданными параметрами (логин, пароль, группа, домашняя директория) и установку базового набора пакетов.
## Системное администрирование
### Процессы и системные службы
Процессы: ps, top, kill.
Управление процессами: запуск, остановка, перезапуск.
Системные службы: systemctl.
Управление системными службами: запуск, остановка, перезапуск, автозапуск.
Найти и остановить процесс, потребляющий много ресурсов. Настроить автоматический запуск веб-сервера при старте системы.
### Журналирование и мониторинг
Журналирование: /var/log/.
Анализ лог-файлов: grep, awk, sed.
Мониторинг системы: vmstat, iostat, df, du.
Настройка ротации логов: logrotate.
Написать скрипт, который анализирует лог-файл и отправляет уведомление, если обнаружена ошибка.
### Сеть
Настройка сети: ip, ifconfig.
Файлы конфигурации сети.
Диагностика сети: ping, traceroute, netstat, ss.
DNS: nslookup, dig.
Настроить статический IP-адрес для виртуальной машины. Проверить доступность внешних ресурсов.
### SSH
SSH: подключение к удаленным серверам.
Аутентификация по паролю и по ключу.
Настройка SSH-сервера.
SSH-туннелирование.
Настроить SSH-доступ к виртуальной машине по ключу.
#### Скрипт, автоматизирующий настройку базовой безопасности сервера: обновление системы, настройка SSH (отключение парольной аутентификации, изменение порта), установка и настройка firewall (ufw или firewalld).
## Автоматизация и скрипты
### Основы Bash scripting
Что такое Bash? Запуск скриптов.
Переменные и типы данных.
Операторы и выражения.
Условные операторы: if, then, else, elif, fi.
Написать скрипт, который выводит приветствие в зависимости от времени суток.
### Циклы
Циклы: for, while, until.
Работа со списками и массивами.
Функции.
Аргументы командной строки.
Написать скрипт, который обрабатывает список файлов в заданном каталоге.
### Работа с текстом в скриптах
grep, sed, awk в скриптах.
Регулярные выражения (основы).
Обработка вывода команд.
Чтение и запись в файлы.
Написать скрипт, который извлекает определенную информацию из лог-файла и записывает ее в другой файл.
### Cron
Cron: планирование задач.
Формат crontab.
Системный crontab и пользовательский crontab.
Примеры использования cron.
Настроить автоматическое резервное копирование базы данных с помощью cron.
#### Скрипт, автоматизирующий резервное копирование важных данных (например, домашние каталоги пользователей, базы данных, конфигурационные файлы) с возможностью выбора места хранения резервных копий (локальный диск, удаленный сервер) и ротации старых копий.
## Расширенные темы
### Виртуализация (KVM/QEMU)
Что такое виртуализация? Типы виртуализации.
Установка и настройка KVM/QEMU.
Создание и управление виртуальными машинами.
Работа с образами дисков.
Создать виртуальную машину с CentOS/Ubuntu.
### Docker (основы)
Что такое Docker? Контейнеры vs. Виртуальные машины.
Установка Docker.
Работа с образами Docker.
Запуск и управление контейнерами.
Запустить веб-сервер в Docker-контейнере.
### Сети в Docker
Сети Docker: bridge, host, none.
Создание пользовательских сетей.
Связывание контейнеров.
Docker Compose (основы).
Создать сеть Docker и связать два контейнера (например, веб-сервер и базу данных).
### Ansible (основы)
Что такое Ansible? Infrastructure as Code.
Установка Ansible.
Ansible inventory.
Ansible playbooks: синтаксис и структура.
Написать playbook, который устанавливает и настраивает Nginx на удаленном сервере.
### Firewalld/iptables
Что такое firewall?
Firewalld: зоны, сервисы, правила.
Iptables: синтаксис и правила.
Примеры настройки firewall.
Настроить firewall для защиты веб-сервера.
### SELinux/AppArmor
Что такое SELinux/AppArmor?
SELinux: режимы работы, контексты.
AppArmor: профили.
Устранение проблем, связанных с SELinux/AppArmor.
Исследовать политики SELinux/AppArmor для веб-сервера.
### Мониторинг (Nagios/Zabbix)
Что такое мониторинг?
Nagios/Zabbix: установка и настройка (основы).
Настройка мониторинга основных параметров системы.
Уведомления о проблемах.
Настроить мониторинг загрузки процессора и использования диска.
### Базы данных (MySQL/PostgreSQL)
Что такое реляционные базы данных?
Установка и настройка MySQL/PostgreSQL.
Основные операции с базами данных: создание, удаление, резервное копирование.
Пользователи и права доступа в базах данных.
Создать базу данных и пользователя с ограниченными правами.
#### Настройка автоматического развертывания веб-приложения (например, WordPress) с использованием Docker Compose и Ansible. Включает в себя создание Dockerfile для веб-сервера и базы данных, написание Ansible playbook для развертывания приложения на удаленном сервере, настройку firewall и мониторинга.
## Углубленное изучение
### Более глубокое изучение выбранных тем (Docker, Ansible, K8s, Cloud)
### Решение реальных задач и разбор кейсов.
## Разработка комплексной системы мониторинга и управления инфраструктурой с использованием выбранных инструментов.
