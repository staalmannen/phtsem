/* this header is here for persistent (re-)definitions needed to build Pth on Plan9/APE. The header is included at the top of pth_p.h */

/* Plan9 hacks: */

#define ECONNRESET ECONNABORTED
#define PLAN9 1
typedef long suseconds_t;

struct timeval {
    struct timespec _timespec;
    time_t tv_sec = x.tv_sec;
    suseseconds_t tv_usec = (suseconds_t) _timespec.tv_nsec * 1000;
};



