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

Цель этой работы - углубиться в изучение языка ассемблера, и мы будем больше практиковаться в том, как создавать программы, способные выполнять уравнения

# выполнения лабораторной работы
- Сначала я создал файл  lab7-1.asm, скопировал код из pdf и запустил его :
![first picture](image/lab1.png)
![first picture](image/conlab1.png)

- И я внес необходимые изменения из pdf-файл в lab7-1.asm и запустил его снова :
![second picture](image/lab1e.png)
![second picture](image/clab1e.png)

- Я также запустил файл lab7-2 и отредактировал его в соответствии с инструкцией в формате pdf :
![third picture](image/clab2.png){#fig:001 width=70%}
![forth picture](image/runlab2.png)

- В-третьих, я создал файл lab7-2.lst с помощью команды nasm :
![fifth picture](image/lstc.png)

# Bыполнения заданий для самостоятельной работы:
- сначала я написал первую программу и запустил еe :

![fifth picture](image/pro1.png)
![fifth picture](image/cpro1.png)

- и я написал вторую программу в соответствии с инструкциями, приведенными в pdf-файле и запустил ее:
![fifth picture](image/cpro2.png)
![fifth picture](image/pro2.png)

# Выводы
В этом pdf-файле мы подробнее попрактиковались в написании кода на ассемблере и узнали о типе файла .lst.
