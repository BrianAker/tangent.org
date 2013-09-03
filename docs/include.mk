# vim:ft=automake
# included from Top Level Makefile.am
# All paths should be given relative to the root

# Makefile for Sphinx documentation
#

SPHINXOPTS    = ${SPHINX_WARNINGS}
PAPER         =
SPHINX_BUILDDIR      = ${top_builddir}/docs
SPHINXBUILD = sphinx-build

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d ${SPHINX_BUILDDIR}/doctrees $(PAPEROPT_$(PAPER)) ${SPHINXOPTS} ${SPHINX_BUILDDIR}

html-local: ${SPHINX_BUILDDIR}/conf.py ${SPHINX_BUILDDIR}/index.rst ${SPHINX_BUILDDIR}/about.rst
	@PYTHONPATH=${SPHINX_BUILDDIR} ${SPHINXBUILD} -b html ${ALLSPHINXOPTS} ${SPHINX_BUILDDIR}/html

linkcheck: ${SPHINX_BUILDDIR}/conf.py
	PYTHONPATH=${SPHINX_BUILDDIR} ${SPHINXBUILD} -b linkcheck ${ALLSPHINXOPTS} ${SPHINX_BUILDDIR}/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output or in ${SPHINX_BUILDDIR}/linkcheck/output.txt."
