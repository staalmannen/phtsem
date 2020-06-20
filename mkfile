</$objtype/mkfile

LIB=libpth.a

OFILES=pth_attr.$O pth_cancel.$O pth_clean.$O pth_compat.$O pth_data.$O pth_debug.$O \
	pth_errno.$O pth_event.$O pth_ext.$O pth_fork.$O pth_high.$O pth_lib.$O \
	pth_mctx.$O pth_msg.$O pth_pqueue.$O pth_ring.$O pth_sched.$O pth_string.$O \
	pth_sync.$O pth_syscall.$O pth_tcb.$O pth_time.$O pth_uctx.$O pth_util.$O \
	pth_vers.$O 

</sys/src/cmd/mklib

CC=pcc
LD=pcc
CFLAGS=-c -I. -B -D_POSIX_SOURCE -D_SUSV2_SOURCE -D_RESEARCH_SOURCE -D_REENTRANT_SOURCE \
	-D_BSD_EXTENSION -D_NET_EXTENSION -D_LIMITS_EXTENSION -D_C99_SNPRINTF_EXTENSION \
	-D_REGEXP_EXTENSION -DHAVE_SOCK_OPTS 


nuke:V:
	mk clean
	rm -f $LIB


install:V:
	mk -f mkfile.pthread $target
	cp pth-config.1 /sys/man/1/pth-config
	cp pth.3 /sys/man/3/pth
	cp pthread-config.1 /sys/man/1/pthread-config
	cp pthread.3 /sys/man/3/pthread
	cp pth.h /sys/include/ape/pth.h
	cp pthread.h /sys/include/ape/pthread.h
	cp pth-config /rc/bin/ape/
	cp pthread-config /rc/bin/ape/
	cp libpth.a /$objtype/lib/ape/libpth.a
	cp libpthread.a /$objtype/lib/ape/libpthread.a


