SPHINXBUILD = sphinx-build
BUILDDIR = build
STAGEDIR = ~/projects/tychoweb/build/output
PROJECTSTAGE = $(STAGEDIR)/oh-2012

SPHINXOPTS = -q -c ./ $(PAPEROPT_$(PAPER))
SLIDESPHINXOPTS = -d $(BUILDDIR)/doctrees $(SPHINXOPTS) source

.DEFAULT_GOAL:slides

$(BUILDDIR)/slides:slides
$(BUILDDIR)/html:html

.PHONY:stage

$(BUILDDIR)/output:$(BUILDDIR)/slides $(BUILDDIR)/html 
	mkdir -p $@
	cp -R $(BUILDDIR)/html/* $@
	cp -R $(BUILDDIR)/slides $@
	touch source/index.txt

$(STAGEDIR):
	mkdir -p $@

stage:$(BUILDDIR)/output
	mkdir -p $(PROJECTSTAGE)
	cp -R $(BUILDDIR)/output/* $(PROJECTSTAGE)
	touch $(BUILDDIR)/output

push:stage
	rsync -arz $(PROJECTSTAGE)/* tychoish@foucault.cyborginstitute.net:/home/tychoish/public/tychoweb/oh-2012

########################################################################

slides:
	$(SPHINXBUILD) -b slides $(SLIDESPHINXOPTS) $(BUILDDIR)/slides
	@echo "[SLIDES] HTML slide build complete."

html:
	$(SPHINXBUILD) -b html $(SLIDESPHINXOPTS) $(BUILDDIR)/html
	@echo "[HTML] site build complete."

clean: 
	rm -rf $(BUILDDIR)
