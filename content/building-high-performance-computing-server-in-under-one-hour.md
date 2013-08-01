Title: Building High Performance Computing Server in Under One Hour
Date: 2013-07-25 22:13
Tags: IPython, scikit-learn, machine learning
Category: IPython
Comments: true
Slug: building-high-performance-computing-server-in-under-one-hour
Author: Eriza Fazli
Summary: 

I finally bit the bullet and got myself an 8-core 4 GHz AMD FX-8350 gamer machine with 16 GB RAM (upgradeable up to 32 GB, which I plan to do so, someday), as I'm getting more and more serious with machine learning. <!-- PELICAN_END_SUMMARY --> I've stucked in scikit-learn out-of-memory error a couple of times, and using Amazon EC2 cluster is not always the most efficient way to go (plus the additional stress of having to look constantly at the hour…). 

For doing embarassingly parallel computation stuff, such as training a Random Forest, or computing cross-validation scores for different samples/subsets of a dataset, having a lot of CPUs is clearly an advantage. scikit-learn makes it really easy to parallelize these kinds of computation (most of the time it's just a matter of setting the parameter `n_jobs=-1`).

So the plan is to build on this 8-core machine a computing server to which I can SSH and build my machine learning models using IPython notebook. I'll share here  the steps to quickly build such a system.

####Install Ubuntu server (ca. 30 min) 

Because graphical desktops are gimmicks.

####Download and install Anaconda Python distribution (ca. 10 min)

From [here](http://www.continuum.io/downloads).

####Configure notebook server (ca. 10 min)

**Create a hashed password**

{% include_code ipython_password lang:python %}

**Create an SSL certificate**, from the command line `$ openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem`

**Create IPython notebook profile**, from the command line `$ ipython profile create nbserver`

**Edit the profile's configuration file**

{% include_code ipython_config lang:python %}

And that's it! Now I can SSH to the machine, cd to the folder where I'll do my analyses, and start IPython notebook server: `$ ipython notebook --profile=nbserver`. Then fire up the notebook from a remote web browser. The URL to use is `https://[server's IP address]:[port number]`. Note the https. 

Using IPython makes it even easy to add more *computers* in the network to form a cluster using IPython.parallel. But that would be a topic for another post.