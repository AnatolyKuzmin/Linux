# Linux

## Основы Linux

### Введение в Linux

Что такое Linux?<br>
**Linux** - это семейство Unix-подобных операционных систем, построенных на базе ядра Linux. **Дистрибутивы Linux** — это операционные системы, которые включают в себя ядро Linux и набор других программ, таких как оболочки, компиляторы и драйверы. Linux системы распространяются в основном бесплатно в виде различных дистрибутивов в форме, готовой для установки и удобной для сопровождения и обновлени.<br>
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

Работа с файлами: cp, mv, rm, cat, less, head, tail.<br>
```cp <источник> <назначение>``` Копирование файла<br>
```mv <источник> <назначение>``` Перемещение файла<br>
```rm <имя_файла>``` Удаление файла<br>
```cat <имя_файла>``` Просмотр содержимого файла<br>
```less <имя_файла>``` Просмотр содержимого постранично<br>
```head <имя_файла>``` Просмотр первых строк файла<br>
```tail <имя_файла>``` Просмотр послдних строк файла<br><br>

Редактирование текстовых файлов: nano, vim (основы).<br>
**Nano** – это простой и удобный текстовый редактор, который часто
 предустановлен в большинстве дистрибутивов Linux.
```nano <имя_файла>```<br>
**Vim** – это мощный и гибкий текстовый редактор, который требует 
больше времени на освоение, но предоставляет гораздо больше возможностей<br>
```vim <имя_файла>```


Режимы работы:<br>
- Командный режим: Используется для навигации по файлу, выполнения команд и 
переключения между режимами. После запуска vim находится в командном режиме.
- Режим вставки: Используется для ввода и редактирования текста. Для перехода в 
режим вставки нажмите клавишу i (insert). Для возврата в командный режим нажмите клавишу Esc.
- Режим последней строки: Находясь в командном режиме, можно выполнять сложные операции 
редактирования текста с помощью клавиши : (двоеточие). 
При нажатии этой клавиши курсор устанавливается в последнюю строку экрана.

Основные команды (в командном режиме):<br>
:w: Сохранить файл.  
:q: Выйти из редактора.  
:q!: Выйти без сохранения изменений.  
:wq: Сохранить и выйти.  
i: Перейти в режим вставки текста слева от курсора.  
a: Перейти в режим вставки текста справа от курсора3.  
Esc: Вернуться в командный режим.  
/: Поиск текста (введите текст для поиска и нажмите Enter). 
Для перехода к следующему результату поиска нажмите n, для перехода к предыдущему – N.  
dd: Удалить строку.  
yy: Копировать строку.  
p: Вставить строку.  
u: Отменить последнее действие3.  
Ctrl+r: Повторить отмененное действие3.


#### Перенаправление ввода/вывода: >, >>, |.<br>
В Linux, перенаправление ввода/вывода — это мощный механизм, позволяющий управлять потоками 
данных между командами и файлами. Любая Linux-утилита принимает входные данные и выдает 
выходные данные. Эти данные передаются через три стандартных потока:<br>
- stdin (стандартный ввод, дескриптор 0): По умолчанию, ввод осуществляется с клавиатуры.  
- stdout (стандартный вывод, дескриптор 1): По умолчанию, вывод отображается на экране.  
- stderr (стандартный вывод ошибок, дескриптор 2): По умолчанию, сообщения об ошибках также отображаются на экране.  


Перенаправление позволяет изменить источник ввода или место назначения вывода.

```1. > (Перенаправление вывода)```

Оператор > перенаправляет стандартный вывод команды в файл. Если файл существует, он будет перезаписан.<br>
```command > file.txt```<br>
```ls -l > files.txt```

```2. >> (Добавление вывода)```

Оператор >> перенаправляет стандартный вывод команды в файл, добавляя его в конец файла. Если файл не существует, он будет создан.
```command >> file.txt```<br>
```echo "Hello, world!" >> log.txt```

```3. | (Конвейер)```

Оператор | (pipe) перенаправляет стандартный вывод одной команды на стандартный ввод другой команды. 
Это позволяет объединять несколько команд в цепочку для выполнения сложных задач.<br>
```command1 | command2 | command3```<br>
```cat file.txt | grep "keyword" | less```

Для перенаправления стандартного потока ошибок используется оператор ```2>```.
```command 2> error.log```

Объединение стандартного вывода и стандартного потока ошибок<br>
Можно перенаправить как стандартный вывод, так и стандартный поток ошибок в один файл.<br>
```command &> file.txt```

Перенаправление стандартного ввода (stdin)<br>
Оператор < перенаправляет содержимое файла на стандартный ввод команды.<br>
```command < file.txt```<br>
```sort < list.txt```

Поиск файлов: find, locate.<br>
```find [путь] [параметры] [выражение]```
```locate <имя_файла>```

Пример

```find /home/user -name myfile.txt```
```find /home/user -type f```
```find /home/user -size +10M```
```find /home/user -mtime -7```
```find . -type f -user John```
```find . -perm 777```
```find . -maxdepth 1 -type f -name "*.txt"```
```locate myfile```

- ```-name```: Поиск файлов по имени (с учетом регистра)
- ```-iname```: Поиск файлов по имени без учета регистра
- ```-type```: Поиск файлов определенного типа
  - ```f```: Обычный файл
  - ```d```: Каталог
- ```-size```: Поиск файлов по размеру
- ```-mtime```: Поиск файлов по времени последней модификации (в днях)
- ```-user```: Поиск файлов, принадлежащих определенному пользователю
- ```-perm```: Поиск файлов по разрешению и режиму доступа
- ```-maxdepth```: Ограничение глубины поиска

### Пользователи и права доступа

Пользователи и группы: useradd, userdel, groupadd, groupdel.

Создание нового пользователя.<br>
```sudo useradd [опции] <имя_пользователя>```

- ```-m```: Создать домашний каталог для пользователя (по умолчанию домашний каталог не создается).
- ```-d <путь>```: Указать путь к домашнему каталогу пользователя.
- ```-g <имя_группы>```: Указать основную группу пользователя.
- ```-G <список_групп>```: Указать список дополнительных групп, в которые будет добавлен пользователь (группы разделяются запятыми).
- ```-s <оболочка>```: Указать оболочку (shell) пользователя (например, /bin/bash, /bin/sh, /bin/zsh).
- ```-c <комментарий>```: Добавить комментарий о пользователе.
- ```-u <UID>```: Задать User ID (пользователя).

Пример

```sudo useradd -m -d /home/newuser -s /bin/bash newuser```: Создать пользователя newuser с домашним каталогом /home/newuser и оболочкой /bin/bash.  
```sudo useradd -m -g users -G wheel,audio testuser```: Создать пользователя testuser, добавить его в группы users, wheel и audio.

Удаление пользователя.<br>
```sudo userdel [опции] <имя_пользователя>```

- ```-r```: Удалить домашний каталог пользователя и его содержимое.
- ```-f```: Принудительное удаление пользователя.

Пример

```sudo userdel testuser```: Удалить пользователя testuser, но оставить его домашний каталог.  
```sudo userdel -r testuser```: Удалить пользователя testuser вместе с его домашним каталогом и содержимым

Создание новой группы.<br>
```sudo groupadd [опции] <имя_группы>```

- ```-g <GID>```: Указать Group ID (группы).
- ```-r```: Создать системную группу.

Пример

```sudo groupadd developers```: Создать группу с именем developers.  

Удаление группы.<br>
```sudo groupdel <имя_группы>```

- ```-f```: Принудительное удаление группы.

Пример

```sudo groupdel developers```: Удалить группу с именем developers.  

Дополнительные команды:<br>
- ```-usermod```: Изменение параметров существующего пользователя.
- ```-passwd```: Изменение пароля пользователя.
- ```-groups```: Показать, в каких группах состоит пользователь.  
Управление членством в группах:<br>
- ```gpasswd -a <имя_пользователя> <имя_группы>```: Добавить пользователя в группу
- ```gpasswd -d <имя_пользователя> <имя_группы>```: Удалить пользователя из группы
- ```usermod -G <список_групп> <имя_пользователя>```:  Изменить список дополнительных групп, в которых состоит пользователь. Важно: при использовании этой команды необходимо указать все группы, в которых должен состоять пользователь, иначе он будет удален из остальных групп

Права доступа: chmod, chown, chgrp.<br>
```rwxr-xr-x, где:```  
- Первые три символа — права владельца (Owner).
  - Чтение (r), Запись (w), Выполнение (x)
- Следующие три — права группы (Group).  
- Последние три — права остальных пользователей (Others).

Для изменения прав доступа к файлам и каталогам. Символьная нотация:<br>
```chmod [опции] <права> <файл>```

```chmod u+x script.sh```  # Добавить право выполнения для владельца
```chmod g-w file.txt```   # Удалить право записи для группы
```chmod o=r file.txt```   # Установить только право чтения для остальных

- ```u```: владелец
- ```g```: группа
- ```o```: остальные
- ```a```: все пользователи
- ```+```: добавить право
- ```-```: удалить право
- ```=```: установить конкретные права

Для изменения прав доступа к файлам и каталогам. Числовая нотация:<br>
Чтение (r) = 4, Запись (w) = 2, Выполнение (x) = 1

```chmod 755 script.sh```  # rwxr-xr-x (владелец имеет все права, группа и остальные имеют право чтения и выполнения)
```chmod 644 file.txt```   # rw-r--r-- (владелец имеет право записи и чтения, группа и остальные имеют только чтение)

Для изменения владельца и группы файла или каталога.<br>
```sudo chown [новый_владелец][:новая_группа] <файл>```

```sudo chown user1 file.txt``` # Изменить владельца на user1
```sudo chown user1:group1 file.txt```   # Изменить владельца на user1 и группу на group1

Для изменения группы файла или каталога.<br>
```sudo chgrp <новая_группа> <файл>```

```sudo chgrp group1 file.txt```   # Изменить группу файла на group1
```chmod 700 myscript.sh```   # Владелец имеет все права, группа и остальные не имеют прав.
```sudo chown alice report.txt```   # Изменить владельца файла report.txt на пользователя alice.
```sudo chgrp developers project.txt```   # Изменить группу файла project.txt на developers.

Специальные разрешения: SUID, SGID, Sticky Bit.<br>
**SUID** - 4 (Set User ID) - Применяется к исполняемым файлам. Если файл имеет флаг SUID, то при его выполнении процесс получает права владельца файла, а не пользователя, который запускает файл. Буква s вместо x в правах владельца (rws)<br>
--- Установка: ```chmod u+s <файл>```
--- Удаление: ```chmod u-s <файл>```
--- Числовой пример: ```chmod 4755 myfile```<br>
**SGID** - 2 (Set Group ID) - Применяется как к файлам так и к каталогам. Процесс запущенный с этим файлом получаетп рава группы файлов. Буква s вместо x в правах группы (rwxr-s).<br>
--- Установка: ```chmod g+s <файл или каталог>```
--- Удаление: ```chmod g-s <файл или каталог>```
--- Числовой пример: ```chmod 2755 mydir```<br>
**Sticky Bit** - 1 - Применяется только к каталогам. Если каталог имеет Sticky Bit, то удалять или изменять файлы внутри него может только владелец файла или суперпользователь (даже если у других пользователей есть права записи на каталог). Буква t вместо x в правах остальных (rwxrwxrwt).<br>
--- Установка: ```chmod +t <каталог>```
--- Удаление: ```chmod -t <каталог>```
--- Числовой пример: ```chmod 1777 /tmp```<br>

```-rwsr-xr-x``` ```-rwxr-sr-x``` ```drwxrwxrwt```<br>

### Пакетный менеджер

Пакетный менеджер: yum (CentOS) / apt (Ubuntu).<br>
```yum``` (**Yellowdog Updater, Modified**) — это менеджер пакетов, используемый в дистрибутивах на базе RPM, таких как CentOS и Red Hat Enterprise Linux.<br>
```sudo yum install <имя_пакета>``` - Установка пакета<br>
```sudo yum update <имя_пакета>``` - Обновление конкретного пакета<br>
```sudo yum remove <имя_пакета>``` - Удаление пакета<br>
```yum search <имя_пакета>``` - Поиск пакета<br>
```yum list all``` - Список всех доступных пакетов<br>
```yum help``` - Справка по командам<br>
```apt``` (**Advanced Package Tool**) — это менеджер пакетов, используемый в дистрибутивах на базе Debian, таких как Ubuntu.<br>
```sudo apt install <имя_пакета>``` - Установка пакета<br>
```sudo apt update <имя_пакета>``` - Обновление конкретного пакета<br>
```sudo apt upgrade``` - Обновление всех пакетов<br>
```sudo apt remove <имя_пакета>``` - Удаление пакета<br>
```apt search <имя_пакета>``` - Поиск пакета<br>
```sudo apt purge <имя_пакета>``` - Удаление пакета и его конфигурационных файлов<br>
```apt list --installed``` - Список всех установленных пакетов<br>

Работа с репозиториями.<br>
**Репозитории** — это хранилища программного обеспечения, которые содержат пакеты, метаданные и информацию о зависимостях для установки и управления программами на Linux.<br>
Добавление репозиториев. Удаление репозиториев.<br>
```sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'```<br>
```sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://mirror.mephi.ru/mariadb/repo/10.5/ubuntu focal main'```<br>
```sudo add-apt-repository --remove 'deb [arch=amd64,arm64,ppc64el] http://mirror.mephi.ru/mariadb/repo/10.5/ubuntu focal main'```<br>
Добавление PPA-репозитория. Удаление PPA-репозитория.<br>
```sudo add-apt-repository ppa:repository/ppa```<br>
```sudo add-apt-repository --remove ppa:repository/ppa```<br>
После добавления или удаления репозитория необходимо обновить список доступных пакетов.<br>
```sudo apt update```<br>

#### Скрипт, автоматизирующий создание пользователя с заданными параметрами (логин, пароль, группа, домашняя директория) и установку базового набора пакетов.<br>
```chmod +x create_user.sh``` - Права на выполнение<br>
```./create_user.sh myuser mypassword users /home/myuser``` - Запуск скрипта с аргументами<br>
[create_user.sh](https://github.com/AnatolyKuzmin/Linux/blob/main/create_user.sh)<br>
```-m```: Создает домашнюю директорию. 
```-d```: Указывает домашнюю директорию. 
```-g```: Указывает основную группу. 
```-s```: Указывает оболочку.<br>

## Системное администрирование

### Процессы и системные службы

Процессы:
- ```ps [опции]``` - для отображения информации о текущих процессах,
  - `-e` или `-A`: Показать все процессы в системе.
  - `-u`: Показать процессы для указанного пользователя.
  - `-f`: Расширенный формат вывода, показывающий больше информации о процессах.
  - `aux`: Отображает все процессы в системе в расширенном формате.
- ```top [опции]``` - отображает информацию о работающих процессах и используемых ими системных ресурсах в реальном времени,
  - `q`: Выход из top.
  - `k`: Отправить сигнал процессу (запросит PID и номер сигнала).
  - `M`: Сортировка процессов по использованию памяти.
  - `P`: Сортировка процессов по использованию процессора.
  - `u`: Показать процессы для указанного пользователя.
- ```kill [опции] <PID>``` - для отправки сигналов процессам, что позволяет завершить или приостановить их выполнение.
  - `15 (SIGTERM)`: Умное завершение процесса (по умолчанию).
  - `9 (SIGKILL)`: Принудительное завершение процесса.
  - `19 (SIGSTOP)`: Приостановка процесса.<br>

Управление процессами: запуск, остановка, перезапуск.<br>
`sudo systemctl start apache2`: Запустить веб-сервер Apache<br>
`sudo systemctl status apache2`: Проверить статус.<br>

`kill <PID>`: Завершить процесс.<br>
`kill -9 <PID>`: Принудительно завершить процесс.<br>
`pkill <name>`: Завершить процесс по имени.<br>

`sudo systemctl restart apache2`: Перезапуск.<br>

`nice -n 10 firefox`: Устанавливает приоритет процесса перед его запуском.<br>
`renice -n 10 -p <PID>`: Изменяет приоритет уже запущенного процесса.<br>

Системные службы: systemctl.<br>
`sudo systemctl start <имя_службы>`: Запуск службы.<br>
`sudo systemctl stop <имя_службы>`: Остановка службы.<br>
`sudo systemctl restart <имя_службы>`: Перезапуск службы.<br>
`sudo systemctl status <имя_службы>`: Проверка статуса службы.<br>
`sudo systemctl enable <имя_службы>`: Включение автозапуска службы.<br>
`sudo systemctl disable <имя_службы>`: Выключение автозапуска службы.<br>
`sudo systemctl reload <имя_службы>`: Перезагрузка конфигурации службы.<br>
`sudo systemctl is-active <имя_службы>`: Проверка активности службы.<br>
`sudo systemctl is-enabled <имя_службы>`: Проверка наличия службы в автозагрузке.<br>
`sudo systemctl mask <имя_службы>`: Маскирование службы.<br>
`sudo systemctl unmask <имя_службы>`: Снятие маски с службы.<br>

### Журналирование и мониторинг<br>
Журналирование: /var/log/.<br>
Журналирование — это процесс записи событий, происходящих в системе.<br>
`journalctl` Просмотр всех логов
`journalctl -u apache2.service` Просмотр логов конкретной службы
`journalctl -f` Просмотр последних записей
`sudo truncate -s 0 /var/log/syslog` Удалить или обнулить файл журнала<br>
Файл журнала	Описание<br>
***/var/log/syslog***	Общий системный журнал. Содержит сообщения от ядра и системных служб (Ubuntu).<br>
***/var/log/messages***	Общий системный журнал (используется в CentOS).<br>
***/var/log/auth.log***	Журнал аутентификации (успешные входы, ошибки входа).<br>
***/var/log/kern.log***	Сообщения ядра Linux.<br>
***/var/log/dmesg***	Сообщения ядра, связанные с загрузкой системы.<br>
***/var/log/boot.log***	Лог загрузки системы.<br>
***/var/log/httpd/***	Логи веб-сервера Apache (если установлен).<br>
***/var/log/nginx/***	Логи веб-сервера Nginx (если установлен).<br>
***/var/log/apt/***	Логи работы пакетного менеджера APT (установка, обновление пакетов).<br>
***/var/log/faillog***	Лог неудачных попыток входа в систему.<br>
***/var/log/wtmp***	Бинарный файл с историей входов и выходов пользователей.<br>

Анализ лог-файлов: grep, awk, sed.<br>
`grep [опции] <ключевое_слово> <файл>` -  для поиска строк, содержащих заданное ключевое слово или регулярное выражение<br>
Опции: `-i` - Игнорировать регистр, `-v` - Вывести строки, которые не содержат ключевое слово, `-n` - Показать номер строки, `-r` - Рекурсивный поиск в каталоге.<br>
`awk '<выражение>' <файл>` -  для обработки текстовых данных, который позволяет извлекать определенные поля из строк.<br>
Пример `awk '/error/ {print $1, $2, $0}' /var/log/syslog` Найти строки, содержащие "error", и вывести только дату, время и сообщение.<br>
`sed '<выражение>' <файл>` -  потоковый редактор, который позволяет выполнять поиск и замену текста.<br>
Пример `sed 's/error/ERROR/g' /var/log/syslog` Заменить слово "error" на "ERROR" в файле /var/log/syslog, `sed '/debug/d' /var/log/syslog` Удалить все строки, содержащие "debug".<br>

Мониторинг системы: vmstat, iostat, df, du.<br>
`vmstat [интервал] [количество]` -  (Virtual Memory Statistics) предоставляет информацию о производительности системы, включая использование процессора, памяти, ввода-вывода и свопа.<br>
`iostat [опции] [интервал] [количество]` -  (Input/Output Statistics) используется для мониторинга производительности ввода-вывода и загрузки процессора.<br>
`df [опции]` -  (Disk Free) отображает информацию о свободном и занятом дисковом пространстве для файловых систем.<br>
Опции: `-h` - Отображение в удобном для чтения формате (например, MB/GB), `-T` - Показать тип файловой системы, `--total` - Показать итоговое использование.<br>
`du [опции] [путь]` -  (Disk Usage) используется для отображения объема занятого дискового пространства файлами и каталогами.<br>
Опции: `-h` - Удобный для чтения формат, `-s` -  Вывести только общий размер указанного каталога, `--max-depth=N` - Ограничить глубину анализа до N уровней.<br>

Настройка ротации логов: logrotate.<br>
**logrotate** — это утилита для автоматического управления лог-файлами. Она позволяет: Архивировать старые логи, Удалять устаревшие логи,
 Сжимать логи (например, в формат .gz), Настраивать ротацию по времени (ежедневно, еженедельно) или по размеру файла.<br>
***/etc/logrotate.conf*** - файл задает общие параметры для всех логов. ***/etc/logrotate.d/*** - в этом каталоге хранятся отдельные конфигурационные файлы для разных приложений (например, apache2, nginx, mysql).<br>
**Пример базовой конфигурации для ротации логов**  
```
text
/var/log/example.log {
    daily                # Ротация ежедневно
    rotate 7             # Хранить 7 архивов
    compress             # Сжимать архивы (gzip)
    delaycompress        # Сжимать архивы через ротацию
    missingok            # Игнорировать ошибки, если файл отсутствует
    notifempty           # Не ротировать пустые файлы
    create 0640 root root # Создавать новый файл с указанными правами и владельцем
    postrotate           # Команды для выполнения после ротации
        systemctl reload example-service
    endscript
}
```
<br>

[Скрипт](https://github.com/AnatolyKuzmin/Linux/blob/main/log_error_notifier.sh), который анализирует лог-файл и отправляет уведомление, если обнаружена ошибка.<br>
Скрипт проверяет, был ли передан путь к лог-файлу. Если нет, выводится сообщение об использовании.<br>
`chmod +x log_error_notifier.sh ` Сделайте его исполняемым, `./log_error_notifier.sh /var/log/syslog` Запустить скрипт, указав путь к лог-файлу<br>

### Сеть
Настройка сети: ip, ifconfig.<br>
**ifconfig** — это классическая команда для управления сетевыми интерфейсами в Linux.  
`ifconfig` Отображение информации о сетевых интерфейсах, `sudo ifconfig eth0 192.168.0.10 netmask 255.255.255.0` Установка IP-адреса, `sudo ifconfig eth0 up` `sudo ifconfig eth0 up` Включение/отключение интерфейса.  
Примеры  
`sudo ifconfig eth0 netmask 255.255.255.224` Назначение маски сети  
`sudo ifconfig eth0 broadcast 172.16.25.63` Назначение широковещательного адреса  
**ip** — это более современная и мощная альтернатива ifconfig  
`ip addr show` Отображение информации о сетевых интерфейсах, `sudo ip addr add 192.168.0.10/24 dev eth0` Установка IP-адреса, `sudo ip addr del 192.168.0.10/24 dev eth0` Удаление IP-адреса, `sudo ip link set eth0 up` `sudo ip link set eth0 down` Включение/отключение интерфейса  
Примеры  
`sudo ip route add default via 192.168.0.1 dev eth0` Добавление маршрута  
`ip route show` Просмотр таблицы маршрутов  

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
