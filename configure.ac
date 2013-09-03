#vim:expandtab:shiftwidth=2:tabstop=2:smarttab:

AC_PREREQ([2.68])
AC_INIT([tangent.org],[1.0],[https://github.com/BrianAker/tangent.org/issues],,[http://tangent.org/])

AC_CONFIG_AUX_DIR([build-aux])

AC_CANONICAL_TARGET

AM_INIT_AUTOMAKE([-Wall -Werror -Wno-portability foreign tar-ustar subdir-objects color-tests silent-rules])

AC_CANONICAL_HOST
AC_CANONICAL_BUILD

AC_CONFIG_MACRO_DIR([m4])

AC_CONFIG_SRCDIR([docs/index.rst])
AC_CONFIG_HEADERS([config.h:config.in])dnl Keep filename to 8.3 for MS-DOS.

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([docs/conf.py])
AC_CONFIG_FILES([conf.d/tangent.conf])
#AC_PROG_CC
AX_PROG_SPHINX_BUILD(,[AC_MSG_ERROR([sphinx-build is required to build the html pages])])

AX_HTMLDIR

AC_OUTPUT
