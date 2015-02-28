appserver.io-vagrant
====================

Vagrant specs to setup a debian wheezy based VM with an up and running installation of 
appserver.io <http://appserver.io>, the PHP application server.


<https://github.com/simirimia/appserver.io-vagrant>

Setup
=====

> `vagrant up`

should do all the magic

After setup, open your browser on the host machine and navigate to:

> `http://192.168.33.10:9080/app/hello.php` 

You should see:

> `Hello from vagrant, puppet, appserver.io and PHP :-)`

If you want to change the IP, you need to update 

* Vagrantfile line 25
* appserver.sh line 18

Hints
=====

This setup creates a new webapp called "app". The source folder is part of the shared vagrant folder, so you can develop
your app on your host machine and automatically run it within the VM. The watcher is enabled by default, so you can 
start writing code right away.

Known issues
============

* Port forwarding is not working as expected