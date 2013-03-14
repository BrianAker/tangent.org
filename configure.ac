#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.68])
AC_INIT([tangent.org], [0.1], [http://tangent.org/])

AC_CONFIG_AUX_DIR(config)

AC_CANONICAL_TARGET

AM_INIT_AUTOMAKE(-Wall -Werror -Wno-portability foreign tar-ustar subdir-objects color-tests silent-rules)

AC_CANONICAL_HOST
AC_CANONICAL_BUILD

AC_CONFIG_MACRO_DIR(m4)

AC_CONFIG_SRCDIR([www/index.rst])
AC_CONFIG_HEADERS([config.h:config.in])dnl Keep filename to 8.3 for MS-DOS.

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([www/conf.py])
AC_PROG_CC

AC_OUTPUT
