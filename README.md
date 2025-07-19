# MySocks
My own socket lib, it's faster, probably not safer, but who cares, i'm only 17, what do you expected? \
and it's only for FreeBSD btw, i'm pretty damn sure you'll need to change the syscalls numbers in other systems \
and i don't know if windows uses syscalls like a normal OS, so i can only guarantee for UNIX like OSs.

## How to compile for dynamic lib
```sh
nasm -f elf64 sockets.asm
ar rcs sockets.a sockets.o
```

## Or if you want to compile directly with the C code \
(or any other language? idk)
```sh
nasm -f elf64 sockets.asm
cc main.c sockets.o
```
