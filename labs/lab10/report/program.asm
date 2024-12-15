;--------------------------------
; Запись в файл строки введененой на запрос
;--------------------------------
%include 'in_out.asm'
SECTION .data
filename: DB 'name.txt', 0h ; Имя файла
msg: DB 'write your name: ', 0h ; Сообщение
my_name: DB 'My name is:',0
SECTION .bss
X: RESB 80

SECTION .text
global _start
_start:
; --- Печать сообщения `msg`
mov eax,msg
call sprint
; ---- Запись введеной с клавиатуры строки в `contents`
mov ecx,X
mov edx,80
call sread
; --- Открытие существующего файла (`sys_open`)
mov ecx, 0777o; открываем для записи (2)
mov ebx, filename
mov eax, 8
int 80h
; --- Запись дескриптора файла в `esi`
mov esi, eax
; --- Расчет длины введенной строки
mov eax, my_name ; в `eax` запишется количество
call slen ; введенных байтов
; --- Записываем в файл `contents` (`sys_write`)
mov edx, eax
mov ecx, my_name
mov ebx, esi
mov eax, 4
int 80h
; --- Закрываем файл (`sys_close`)
mov ebx, esi
mov eax, 6
int 80h

mov ecx,1
mov ebx,filename
mov eax,5
int 80h

mov esi , eax

mov edx,2
mov ecx,0
mov ebx, eax
mov eax, 19
int 80h

mov eax, X
call slen

mov edx,eax
mov ecx, X
mov ebx, esi
mov eax, 4
int 80h

mov ebx,esi
mov eax,6
int 80h

call quit
