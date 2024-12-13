---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "архитектура компьютерa"
author: "мохамед Муса"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---
 # <center>Шаблон отчёта по лабораторной работе </center>
## <center>архитектура компьютерa</center>
### <center> мохамед Муса</center>
#  Цель работы 

Цель этой работы - углубиться в использование assembly и научиться выражать различные уравнения с помощью assemply

# выполнения лабораторной работы
- Сначала я создал файл lab6-1.asm, скопировал код из pdf и запустил его :
![first picture](images/lab1.png){#fig:001 width=70%}

- И я внес необходимые изменения из pdf-файл в lab6-1.asm и запустил его снова :
![second picture](images/edited_lab1.png){#fig:001 width=70%}

- Я также запустил файл lab6-2 и отредактировал его в соответствии с инструкцией в формате pdf :
![third picture](images/lab2.png){#fig:001 width=70%}
![forth picture](images/edited_lab2.png){#fig:001 width=70%}

- В-третьих, я создал файл lab6-3.asm и использую его, чтобы научиться писать уравнения в asm :
![fifth picture](images/edited_lab3.png){#fig:001 width=70%}

- После этого я использовал код variant.asm, чтобы продемонстрировать, какая задача является моей :
![sixth picture](images/variant.png){#fig:001 width=70%}

Найдя свою задачу, я написал код в соответствии с заданным выражением 5(x-1)^2 :
-![seventh picture](images/solve_variant.png){#fig:001 width=70%}
-![eighth picture](images/x2.png){#fig:001 width=70%}
-![ninth picture](images/code_work.png){#fig:001 width=70%}

# Отчет по выполнению лабораторной работы
1. Какие строки листинга 6.4 отвечают за вывод на экран сообщения ‘Ваш вариант:’?
 - mov edx, msg1
 - call sprint
2. Для чего используются следующие инструкции?
 - **mov ecx, x** — загрузка адреса буфера для ввода.
 - **mov edx, 80** — установка максимального размера ввода.
 - **call sread** — вызов функции для чтения строки.
3. Для чего используется инструкция **call atoi**?
 - Преобразование строки в целое число.
4. Какие строки листинга 6.4 отвечают за вычисления варианта? 
 - mov eax, variant
 - mov ebx, 17
 - div ebx
5. В какой регистр записывается остаток от деления при выполнении инструкции **div ebx**?
 - В регистр edx.
6. Для чего используется инструкция **inc edx**?
 - Увеличение значения в регистре edx на 1.
7. Какие строки листинга 6.4 отвечают за вывод на экран результата вычислений?
 - mov eax, edx
 - call sprint_int

# Выводы

В конце концов, мы научились писать выражения с помощью ассемблерного кода
# Список литературы{.unnumbered}

::: {#refs}
:::
