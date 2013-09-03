# ===========================================================================
# https://github.com/BrianAker/ddm4/m4/ax_htmldir.m4
# ===========================================================================
#
# SYNOPSIS
#
#   AX_HTMLDIR
#
# DESCRIPTION
#
#   Expand HTMLDIR so that it can be used for substitution.
#
# LICENSE
#
#   Copyright (c) 2012-2013 Brian Aker <brian@tangent.org>
#
#   Copying and distribution of this file, with or without modification, are
#   permitted in any medium without royalty provided the copyright notice
#   and this notice are preserved. This file is offered as-is, without any
#   warranty.

#serial 5
AC_DEFUN([AX_HTMLDIR],[ 
         AC_REQUIRE([AX_EXPAND_PREFIX])
         AS_IF([test "x$htmldir" = 'x${docdir}'],[
               htmldir='${docdir}/html'
               ])
         expand_htmldir=`eval echo ${htmldir}`
         expand_prefix_htmldir=`eval echo ${expand_htmldir}`
         AC_SUBST([HTMLDIR],`eval echo ${expand_prefix_htmldir}`)
         ]) 
