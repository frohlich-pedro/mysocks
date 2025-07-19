bits 64

global socket
global bind
global listen
global accept
global setopt
global close

section .text

socket:
	mov rax, 97
	mov rdi, rdi
	mov rsi, rsi
	mov rdx, rdx
	syscall
	ret

bind:
	mov rax, 104
	mov rdi, rdi
	mov rsi, rsi
	mov rdx, rdx
	syscall
	ret

listen:
	mov rax, 106
	mov rdi, rdi
	mov rsi, rsi
	syscall
	ret

accept:
	mov rax, 30
	mov rdi, rdi
	mov rsi, rsi
	mov rdx, rdx
	syscall
	ret

setopt:
	mov rax, 105
	mov rdi, rdi
	mov rsi, rsi
	mov rdx, rdx
	mov rcx, rcx
	mov r8, r8
	syscall
	ret
