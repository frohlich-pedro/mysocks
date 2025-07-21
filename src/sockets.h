#ifndef SOCKETS_H
#define SOCKETS_H

#define AF_INET 2
#define SOCK_STREAM 1
#define SOCK_DGRAM 2
#define IPPROTO_TCP 6
#define IPPROTO_UDP 17
#define SOL_SOCKET 0xffff

#define SO_REUSEADDR 0x0004
#define SO_KEEPALIVE 0x0008
#define SO_REUSEPORT 0x0200

#define INADDR_ANY 0x00000000
#define INADDR_LOOPBACK 0x7f000001

struct in_addr {
  unsigned int s_addr;
};

struct sockaddr_in {
  unsigned char sin_len;
  unsigned char sin_family;
  unsigned short sin_port;
  struct in_addr sin_addr;
  char sin_zero[8];
};

struct sockaddr {
  unsigned char sa_len;
  unsigned char sa_family;
  char sa_data[14];
};

extern int socket(int domain, int type, int protocol);
extern int bind(int socket, const struct sockaddr* addr, unsigned int addrlen);
extern int listen(int socket, int backlog);
extern int accept(int socket, struct sockaddr* addr, unsigned int* addrlen);
extern int setsockopt(int socket, int level, int optname, const void* optval, unsigned int optlen);
extern int getsockopt(int socket, int level, int optname, void* optval, unsigned int* optlen);
extern int connect(int socket, const struct sockaddr* addr, unsigned int addrlen);
extern long send(int socket, const void* buffer, unsigned int length, int flags);
extern long recv(int socket, void* buffer, unsigned int length, int flags);
extern int close(int fd);

static inline unsigned short htons(unsigned short hostshort) {
  return ((hostshort & 0xff) << 8) | ((hostshort >> 8) & 0xff);
}

static inline unsigned short ntohs(unsigned short netshort) {
  return ((netshort & 0xff) << 8) | ((netshort >> 8) & 0xff);
}

static inline unsigned int htonl(unsigned int hostlong) {
  return ((hostlong & 0xff) << 24) | 
    (((hostlong >> 8) & 0xff) << 16) |
    (((hostlong >> 16) & 0xff) << 8) |
    ((hostlong >> 24) & 0xff);
}

static inline unsigned int ntohl(unsigned int netlong) {
  return ((netlong & 0xff) << 24) | 
    (((netlong >> 8) & 0xff) << 16) |
    (((netlong >> 16) & 0xff) << 8) |
    ((netlong >> 24) & 0xff);
}

static inline unsigned int inet_addr(unsigned char a, unsigned char b, unsigned char c, unsigned char d) {
  return (((unsigned int)a) << 24) | (((unsigned int)b) << 16) | (((unsigned int)c) << 8) | ((unsigned int)d);
}

#endif
