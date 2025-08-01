.code64
.section .text

.global socket
.type socket, @function
socket:
  push %rbp
  mov %rsp, %rbp
  
  mov $97, %rax
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global bind
.type bind, @function
bind:
  push %rbp
  mov %rsp, %rbp
  
  mov $104, %rax
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global listen
.type listen, @function
listen:
  push %rbp
  mov %rsp, %rbp
  
  mov $106, %rax
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global accept
.type accept, @function
accept:
  push %rbp
  mov %rsp, %rbp
  
  mov $30, %rax
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global setsockopt
.type setsockopt, @function
setsockopt:
  push %rbp
  mov %rsp, %rbp
  
  mov $105, %rax
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global getsockopt
.type getsockopt, @function
getsockopt:
  push %rbp
  mov %rsp, %rbp
  
  mov $118, %rax
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global connect
.type connect, @function
connect:
  push %rbp
  mov %rsp, %rbp
  
  mov $98, %rax
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global send
.type send, @function
send:
  push %rbp
  mov %rsp, %rbp
  
  mov $133, %rax
  mov $0, %r8
  mov $0, %r9
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret

.global recv
.type recv, @function
recv:
  push %rbp
  mov %rsp, %rbp
  
  mov $29, %rax
  mov $0, %r8
  mov $0, %r9
  syscall

  mov %rbp, %rsp
  pop %rbp
  ret
