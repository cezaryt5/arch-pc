;--------------------------------
; Программа вычисления выражения
;--------------------------------
%include 'in_out.asm' ; подключение внешнего файла

SECTION .data
div: DB 'Результат: ',0
msg: DB 'выведите x: ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start

_start:
    ; ----значение x----
    mov eax, msg  ; адрес строки 'выведите x: '
    call sprintLF    ; вывод строки
    mov ecx, x       ; адрес буфера для ввода
    mov edx, 80      ; максимальная длина ввода
    call sread       ; чтение строки
    mov eax,x        ; ebx = x
    call atoi        ; преобразование строки в число
  

    ; ---- вычислите выражение 5 * (x - 1)^2 ----
    sub eax,1          ; ebx = x - 1
    mov ebx, eax     ; ebx = x - 1 
    imul ebx         ; eax = (x - 1)^2
    mov ecx, 5       ; ecx = 5
    imul ecx         ; eax = 5 * (x - 1)^2

    ; ---- Вывод результата на экран ----
    mov eax, div     ; адрес строки 'Результат: '
    call sprint      ; вывод строки
    call iprintLF    ; вывод результата в eax
    call quit ; вызов подпрограммы завершения
