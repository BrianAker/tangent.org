# vim:ft=automake
#
# Copyright (C) 2011 Data Differential, http://datadifferential.com/
# All rights reserved.
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 3 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
#

ACLOCAL_AMFLAGS= -I m4 --install

CLEANFILES=
EXTRA_DIST=
TESTS=
check_PROGRAMS=

apachedir = $(sysconfdir)
apache_DATA=

tangentdir = $(localstatedir)
tangent_DATA=

include www/include.am
include httpd/include.am


test: check

TESTS+= ${check_PROGRAMS}

maintainer-clean-local:
	find . -type f -name '*~' -exec rm -f '{}' \;
	-rm -f @PACKAGE@-*.rpm
	-rm -f @PACKAGE@-*.tar.gz
	-rm Makefile.in
	-rm aclocal.m4
	-rm config.log
	-rm config.status
	-rm configure
	-rm -rf tangent.org
	-rm -rf config
	-rm -rf build-aux
	-rm -rf ${top_builddir}/tangent.org
