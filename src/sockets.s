.global socket
.type socket, @function
socket:
  mov $97, %rax
  syscall
  ret

.global bind
.type bind, @function
bind:
  mov $104, %rax
  syscall
  ret

.global listen
.type listen, @function
listen:
  mov $106, %rax
  syscall
  ret

.global accept
.type accept, @function
accept:
  mov $30, %rax
  syscall
  ret

.global setsockopt
.type setsockopt, @function
setsockopt:
  mov $105, %rax
  syscall
  ret

.global getsockopt
.type getsockopt, @function
getsockopt:
  mov $118, %rax
  syscall
  ret

.global connect
.type connect, @function
connect:
  mov $98, %rax
  syscall
  ret

.global send
.type send, @function
send:
  mov $133, %rax
  mov $0, %r8
  mov $0, %r9
  syscall
  ret

.global recv
.type recv, @function
recv:
  mov $29, %rax
  mov $0, %r8
  mov $0, %r9
  syscall
  ret

.global close
.type close, @function
close:
  mov $6, %rax
  syscall
  ret
