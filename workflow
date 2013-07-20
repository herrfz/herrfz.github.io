git checkout source                                     # switches to source branch
make post                                               # command to setup new post
==write,edit==
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
