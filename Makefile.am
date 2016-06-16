ACLOCAL_AMFLAGS = -I m4
lib_LTLIBRARIES = liblog.la
liblog_la_SOURCES = liblog.c
include_HEADERS = liblog.h
liblog_la_LDFLAGS = -version-info @lt_major@:@lt_revision@:@lt_age@
liblog_la_CFLAGS = -Werror

noinst_PROGRAMS = test_liblog
test_liblog_SOURCE = test_liblog.c
test_liblog_LDADD = -llog -lpthread
