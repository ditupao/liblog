#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([liblog], [1.0.0], [gozfree@163.com])
lt_major=1
lt_revision=0
lt_age=0
AC_SUBST([lt_major])
AC_SUBST([lt_revision])
AC_SUBST([lt_age])
AC_CONFIG_AUX_DIR([scripts])
AM_INIT_AUTOMAKE
AC_PROG_LIBTOOL
AC_CONFIG_SRCDIR([liblog.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIRS([m4])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.
# FIXME: Replace `main' with a function in `-llog':
AC_CHECK_LIB([log], [-llog])
# FIXME: Replace `main' with a function in `-lpthread':
AC_CHECK_LIB([pthread], [-lpthread])

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h stdint.h stdlib.h string.h sys/time.h syslog.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_PID_T
AC_TYPE_SSIZE_T
AC_TYPE_UINT32_T

# Checks for library functions.
AC_CHECK_FUNCS([gettimeofday localtime_r memset mkdir strcasecmp strchr strdup strerror strrchr strstr])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
