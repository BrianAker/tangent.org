# vim:ft=automake
# included from Top Level Makefile.am
# All paths should be given relative to the root

# Makefile for Sphinx documentation
#

SPHINXOPTS    = ${SPHINX_WARNINGS}
PAPER         =
SPHINX_BUILDDIR      = ${top_builddir}/docs
SPHINX_BUILDDIR_HTML      = ${SPHINX_BUILDDIR}/html
SPHINX_BUILDDIR_LINKCHECK      = ${SPHINX_BUILDDIR}/linkcheck
SPHINX_BUILDDIR_DOCTREES      = ${SPHINX_BUILDDIR}/doctrees
SPHINXBUILD = @SPHINXBUILD@
RST=
RST+= ${SPHINX_BUILDDIR}/index.rst
RST+= ${SPHINX_BUILDDIR}/about.rst
STATIC=
STATIC+= ${SPHINX_BUILDDIR}/_static/TangentOrg.png
STATIC+= ${SPHINX_BUILDDIR}/_static/drizzle.jpg
STATIC+= ${SPHINX_BUILDDIR}/_static/favicon.ico
STATIC+= ${SPHINX_BUILDDIR}/_static/gearman.png
STATIC+= ${SPHINX_BUILDDIR}/_static/libmemcached.jpg
STATIC+= ${SPHINX_BUILDDIR}/_static/tangent.jpg

EXTRA_DIST+= $(RST)
EXTRA_DIST+= $(STATIC)

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d ${SPHINX_BUILDDIR_DOCTREES} $(PAPEROPT_$(PAPER)) ${SPHINXOPTS} ${SPHINX_BUILDDIR}

clean-local:
	rm -rf ${SPHINX_BUILDDIR_HTML}
	rm -rf ${SPHINX_BUILDDIR_LINKCHECK}
	rm -rf ${SPHINX_BUILDDIR_DOCTREES}

html-local: ${SPHINX_BUILDDIR}/conf.py ${RST}
	@PYTHONPATH=${SPHINX_BUILDDIR} ${SPHINXBUILD} -b html ${ALLSPHINXOPTS} ${SPHINX_BUILDDIR_HTML}

linkcheck: ${SPHINX_BUILDDIR}/conf.py ${RST}
	PYTHONPATH=${SPHINX_BUILDDIR} ${SPHINXBUILD} -b linkcheck ${ALLSPHINXOPTS} ${SPHINX_BUILDDIR_LINKCHECK}
