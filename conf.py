import sys, os

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#sys.path.insert(0, os.path.abspath('.'))

needs_sphinx = '1.0'

extensions = ["sphinx.ext.intersphinx", "sphinx.ext.extlinks", "hieroglyph"]
templates_path = ['']
source_suffix = '.txt'
master_doc = 'index'

project = u'Sam Kleinman'
copyright = u'2012, Sam Kleinman (10gen Inc.)'

version = '1.0'
release = version

exclude_patterns = []
pygments_style = 'sphinx'

extlinks = {}


# -- Options for HTML output ---------------------------------------------------

html_theme = 'tychoish'
#html_theme = 'single-level'
html_theme_path = ['themes']

html_title = "OpenHelp 2012: Documentation for and Against Developers"
html_use_smartypants = True
