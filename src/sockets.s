.code64
.global socket
.type socket, @function
socket:
	mov $97, %rax
	mov %rdi, %rdi
	mov %rsi, %rsi
	mov %rdx, %rdx
	syscall
	ret

.global bind
.type bind, @function
bind:
	mov $104, %rax
	mov %rdi, %rdi
	mov %rsi, %rsi
	mov %rdx, %rdx
	syscall
	ret

.global listen
.type listen, @function
listen:
	mov $106, %rax
	mov %rdi, %rdi
	mov %rsi, %rsi
	syscall
	ret

.global accept
.type accept, @function
accept:
	mov $30, %rax
	mov %rdi, %rdi
	mov %rsi, %rsi
	mov %rdx, %rdx
	syscall
	ret

.global setopt
.type setopt, @function
setopt:
	mov $105, %rax
	mov %rdi, %rdi
	mov %rsi, %rsi
	mov %rdx, %rdx
 	mov %rcx, %rcx
  	mov %r8, %r8
	syscall
	ret

.global close
.type close, @function
close:
	mov $6, %rax
	mov %rdi, %rdi
	syscall
	ret
