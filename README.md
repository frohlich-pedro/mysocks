# MySocks
My own socket lib, it's faster, probably not safer, but who cares, i'm only 17, what do you expected? \

## How to compile for dinamic lib
```sh
as --64 sockets.s -o sockets.o
ar rcs sockets.a sockets.o
```

## Or if you want to compile directly with the C code (or any other language? idk)
```sh
as --64 sockets.s -o sockets.o
cc main.c sockets.o
```
