#ifndef SOCKETS_H
#define SOCKETS_H

typedef unsigned char byte;
typedef unsigned short word;
typedef unsigned int dword;
typedef unsigned long long qword;

struct sockaddr_in {
	byte len;
	byte family;
	word port;
	dword addr;
	char zero[8];
};

struct sockaddr {
	byte len;
	byte family;
	char data[14];
};

extern dword socket(dword domain, dword type, dword protocol);
extern dword bind(dword socket, const struct sockaddr* addr, dword len);
extern dword listen(dword socket, dword backlog);
extern dword accept(dword socket, struct sockaddr* addr, dword* len);
extern dword setopt(dword socket, dword level, dword optname, const void* optval, dword optlen);

static inline word nethost(word host) {
	return ((host & 0xff) << 8) | ((host >> 8) & 0xff);
}

#endif
