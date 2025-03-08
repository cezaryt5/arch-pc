

## <center> Отчёт по лабораторной работе </center>
## <center>Архитектура компьютеров </center>
## <center>Мохамед Муса </center>
## <center> 1032248286 </center>


# Цель работы :
- цель этой работы - узнать, как установить linux fedora на виртуальную машину

# Bыполнения лабораторной работы :
1. Cначала я перешел по ссылкам "https://fedoraproject.org//", которые были необходимы для загрузки необходимых ресурсов :<br>
*Рисунок 1: Ссылка для загрузки Fedora*
<img src="fedora-link.png" alt="fedora-link" width="600" height="400">

2. Bо-вторых, я выбираю Virtualbox для установки fedora и продолжаю установку. Обратите внимание! я использую Windows в качестве своей основной операционной системы <br>

*Рисунок 2: Главный экран VirtualBox*
- вам нужно нажать "new".
<img src="image.png" alt="home screen" width="600" height="400"><br>

*Рисунок 3: Настройки виртуальной машины для Fedora*
- вам нужно задать имя виртуальной машины и указать, где вы хотите ее сохранить, и, наконец, выбрать iso-файл, который мы загрузили с первого сайта.
<img src="image-1.png" alt="settings" width="600" height="400"><br>

*Рисунок 4: Настройки жесткого диска для виртуальной машины*
- установив подходящий для вас объем оперативной памяти, выберите для вашего виртуального диска объем памяти не менее 60 ГБ.
<img src="image-2.png" alt="HD settings" width="600" height="400"><br>

*Рисунок 5: Настройки монитора для виртуальной машины*
- после нажатия кнопки готово вы увидите золотую шестеренку, а под ней надпись "настройки", нажмите на нее и перейдите к отображению и увеличьте объем памяти до 128 Мб.
<img src="image-3.png" alt="Monitor settings" width="600" height="400"><br>

*Рисунок 6: Кнопка запуска виртуальной машины*
- и теперь вы можете запустить виртуальную машину, нажав на зеленую стрелку, чтобы запустить машину.
<img src="image-4.png" alt="start button" width="600" height="400"><br>

*Рисунок 7: Экран при первом запуске виртуальной машины*
- Здесь нажмите стрелку вверх на клавиатуре и нажмите enter.
<img src="image-5.png" alt="when its first time opening" width="600" height="400"><br>

*Рисунок 8: Установка операционной системы*
- как только компьютер откроется, нажмите Windows+d и найдите "drun Install in a hard drive".
<img src="image-6.png" alt="start button" width="600" height="400"><br>

*Рисунок 9: установка экрана*
- Как только вы нажмете enter, должен появиться этот экран, выберите язык, который вы предпочитаете.
<img src="image-7.png" alt="start button" width="600" height="400"><br>

*Рисунок 10: установка настроек*
- что здесь важно, так это раздел "Система" и раздел "пользователь", во-первых, вы должны нажать на значок жесткого диска и выбрать нужный диск, во-вторых, выбрать значок со стрелками и выбрать название вашего сeйта, в-третьих, выбрать значок ключа и включить пароль root, в-четвертых, выбрать значок "человек" и ввести свое полное имя и пароль пользователя. введите свое имя пользователя и введите новый пароль.
<img src="image-8.png" alt="start button" width="600" height="400"><br>

*Рисунок 11: Завершение установка*
- Как только вы все сделаете, нажмите продолжить установку.
<img src="image-9.png" alt="start button" width="600" height="400"><br>
<img src="image-10.png" alt="start button" width="600" height="400"><br>

*Рисунок 11: Kоды после успешной установки системы*
- Как только программа завершит работу, перейдите на главный экран, нажмите Windows+Enter, чтобы открыть терминал и запустить:<br>
<span style="color:red" style="background-color:black">sudo systemctl reboot </span><br>

*Рисунок 12: Интерфейс пользователя*
- После перезагрузки системы вы увидите следующий экран введите свое имя пользователя и пароль для входа в систему.
<img src="image-11.png" alt="start button" width="600" height="400"><br>

Tеперь вы все в порядке.
# Полезные коды :

### Обновления
- Установите средства разработки:
<span style="color:red" style="background-color:black">sudo dnf -y group install development-tools </span><br>

### Обновить все пакеты
<span style="color:red" style="background-color:black">sudo dnf -y update</span><br>

### Программы для удобства работы в консоли:
<span style="color:red" style="background-color:black">sudo dnf -y install tmux mc</span><br>

### Другой вариант консоли:
<span style="color:red" style="background-color:black">sudo dnf -y install kitty</span><br>

### Установим дистрибутив TeXlive:
<span style="color:red" style="background-color:black">sudo dnf -y install texlive-scheme-full</span><br>

# Kоманда dmesg
- Чтобы просмотреть системные журналы, запустите:
<span style="color:red" style="background-color:black"> dmesg | less</span><br>
- Версия ядра Linux
<span style="color:red" style="background-color:black">dmesg | grep -i "Linux version"</span><br>
- Частота процессора (Detected Mhz processor).
<span style="color:red" style="background-color:black">dmesg | grep -i "Detected MHz"</span><br>
- Модель процессора (CPU0).
<span style="color:red" style="background-color:black">dmesg | grep -i "CPU0"</span><br>
- Объём доступной оперативной памяти (Memory available).
<span style="color:red" style="background-color:black">dmesg | grep -i "Memory available"</span><br>
- Тип обнаруженного гипервизора (Hypervisor detected).
<span style="color:red" style="background-color:black">dmesg | grep -i "Hypervisor detected"</span><br>
- Тип файловой системы корневого раздела.
<span style="color:red" style="background-color:black">dmesg | grep -i "root filesystem"</span><br>
- Последовательность монтирования файловых систем.
<span style="color:red" style="background-color:black">dmesg | grep -i "mount"</span><br>
<img src="image-14.png" alt="start button" width="600" height="400"><br>

# Oтветы на часто задаваемые вопросы :

1. Какую информацию содержит учётная запись пользователя ?
- Содержит информацию: имя пользователя, пароль, UID, GID, домашний каталог, shell и права доступа.

2. Укажите команды терминала и приведите примеры:
 - для получения справки по команде : 
  <span style="color:red" style="background-color:black">man команда</span><br>
 - для перемещения по файловой системе : 
  <span style="color:red" style="background-color:black">cd путь</span><br>
 - для просмотра содержимого каталога : 
  <span style="color:red" style="background-color:black">ls</span><br>
 - для определения объёма каталога : 
  <span style="color:red" style="background-color:black">du -sh путь </span><br>
 - для создания / удаления каталогов / файлов : 
  <span style="color:red" style="background-color:black"> mkdir каталог / rm файл / rmdir каталог</span><br>
 - для задания определённых прав на файл / каталог : 
  <span style="color:red" style="background-color:black">chmod права файл</span><br>
 - для просмотра истории команд :
  <span style="color:red" style="background-color:black">history</span><br>

3. Что такое файловая система? Приведите примеры с краткой характеристикой.
- Это структура для хранения и организации файлов на диске. Примеры:
  - ext4 (Linux) – высокая производительность и надёжность.
  - NTFS (Windows) – поддержка больших файлов и журналирование.
  - FAT32 – совместимость, но ограничения на размер файла.

4. Как посмотреть, какие файловые системы подмонтированы в ОС?<br>
 <span style="color:red" style="background-color:black">df -h </span> или <span style="color:red" style="background-color:black">mount</span><br>

5. Как удалить зависший процесс?<br>
*Найти PID процесса:*
 - <span style="color:red" style="background-color:black">ps aux | grep имя_процесса</span><br>
 *Завершить процесс:*
 - <span style="color:red" style="background-color:black">kill PID</span><br>
 *Если не работает:*
 - <span style="color:red" style="background-color:black">kill -9 PID</span><br>





 