Le blog
-------
This is my blog, based on the [Pelican](http://blog.getpelican.com/)
blogging platform, which I forked from [Jake](https://github.com/jakevdp/PythonicPerambulations).  

Requirements
------------
- Recent version of
  [pelican-plugins](https://github.com/getpelican/pelican-plugins):
  Make sure the path is specified correctly in ``pelicanconf.py``.
  This must include the ``liquid_tags`` plugin from this PR:
  https://github.com/getpelican/pelican-plugins/pull/21

- Recent version of
  [nbconvert](https://github.com/ipython/nbconvert):
  Make sure that your ``PYTHONPATH`` system variable points to this directory.
  This will need to be updated in the future: the nbconvert package is	
  currently undergoing an extensive refactoring for IPython 1.0.

- Recent version of
  [pelican-octopress-theme](https://github.com/duilio/pelican-octopress-theme),
  with an additional few lines in the header (see ``pelicanconf.py`` for
  a description of what is needed).
  For a few of the options, this requires several additions:
  
  - https://github.com/duilio/pelican-octopress-theme/pull/11: social media
  - https://github.com/duilio/pelican-octopress-theme/pull/12: disqus specification
  - https://github.com/duilio/pelican-octopress-theme/pull/13: extra header args
  
  
Customizations
---------------

- Clone pelican-plugins and pelican-octopress-theme from Jvdp 
- Cherry-picked customizations:
	- [Minimalist colours](Minimalist colours)
	- [Blogging with IPython notebook](http://danielfrg.github.io/blog/2013/03/08/pelican-ipython-notebook-plugin/). Note: things may change in the future as `nbconvert` becomes part of IPython
	- [Syntax highlighting](http://www.wongdev.com/blog/2013/01/19/spicing-up-octopress/) for code snippets.
	- [Fonts, line spacing, etc.](http://melandri.net/2012/02/14/octopress-theme-customization/)