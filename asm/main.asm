section .data
    ; strucs
    timeval:
        sec dd 0
        nsec dd 0
    ; constants
    blank: db "", 0x0a
    blanklen: equ $ - blank
    wel: db "Welcome to Assembly in Docker", 0x0a
    wellen: equ $ - wel
section .text
    _start:
        mov     dword [sec], 5
        mov     dword [nsec], 0
        mov     rax, 162
        mov     rbx, timeval
        mov     rcx, 0
        int     0x80

        mov     rax, 4
        mov     rbx, 1
        mov     rcx, blank
        mov     rdx, blanklen
        int     0x80

        mov     rax, 4
        mov     rbx, 1
        mov     rcx, wel
        mov     rdx, wellen
        int     0x80

        mov     rax, 4
        mov     rbx, 1
        mov     rcx, blank
        mov     rdx, blanklen
        int     0x80

        mov     rax, 1
        mov     rbx, 0
        int     0x80