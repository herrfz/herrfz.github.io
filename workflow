git checkout source                                     # switches to source branch
make post                                               # command to setup new post
==write,edit==                                          # to use the summary plugin, don't include "summary:" metadata tag in the post
make devserver                                          # start a local webserver at localhost:8000
==observe,iterate==
./develop_server.sh stop                                # stop the webserver
git add <files>                                         # add files to commit to the source branch
                                                        # to add all: git add -A .
git commit -m "Message describing the post"             # commit the source
git push origin source                                  # update the source branch on github
make github                                             # update the master branch on github


# when modifying theme
cd <to where config.rb is located>
compass compile


# read Jake's writeup here: http://jakevdp.github.io/blog/2013/05/07/migrating-from-octopress-to-pelican/

# Liquid tags added by Jake
{% img /url/to/image.png [width] [height] [title] [alt]%}
{% video /url/to/video.mp4 [width] [height] [title] %}
{% include_code filename [title] %}
{% notebook filename.ipynb [cells[start:end]] %}        # requires IPython 1.0+
