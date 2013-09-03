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
html_DATA=

apachedir= $(sysconfdir)/httpd
imagedir= $(htmldir)/_images
sourcesdir= $(htmldir)/_sources
staticdir= $(htmldir)/_static
wellknowndir= $(htmldir)/.well-known

image_DATA=
sources_DATA=
static_DATA=
wellknown_DATA=
nobase_apache_DATA=

include docs/include.mk
include conf.d/include.mk
include openid/include.mk

sources_DATA+= docs/html/_sources/*
static_DATA+= docs/html/_static/*
image_DATA+= docs/html/_images/*

html_DATA+= docs/html/about.html
html_DATA+= docs/html/index.html
html_DATA+= docs/html/objects.inv
html_DATA+= docs/html/search.html
html_DATA+= docs/html/searchindex.js
html_DATA+= docs/html/_static/favicon.ico
html_DATA+= docs/html/_static/TangentOrg.png

EXTRA_DIST+= $(html_DATA)
EXTRA_DIST+= $(image_DATA)
EXTRA_DIST+= $(nobase_apache_DATA)
EXTRA_DIST+= $(sources_DATA)
EXTRA_DIST+= $(static_DATA)
EXTRA_DIST+= $(wellknown_DATA)

test: check

all: | html-local

maintainer-clean-local:
	find . -type f -name '*~' -exec rm -f '{}' \;
	-rm -f @PACKAGE@-*.rpm
	-rm -f @PACKAGE@-*.tar.gz
	-rm Makefile.in
	-rm aclocal.m4
	-rm config.log
	-rm config.status
	-rm configure
	-rm -rf config
	-rm -rf build-aux
	-rm config.in
