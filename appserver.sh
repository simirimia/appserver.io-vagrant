#!/bin/bash

# enable developer mode
/opt/appserver/server.php -s dev

# repair broken header in init script
sed -i 's/appserver watcher aka appserver deployment scanner/appserver-watcher/' /etc/init.d/appserver-watcher

# automatically start everything
update-rc.d appserver defaults
update-rc.d appserver-php5-fpm defaults
update-rc.d appserver-watcher defaults

# create link to vagrant app dir for future app development
ln -s /vagrant/app /opt/appserver/webapps/app

# listen to external IP
sed -i ':begin;$!N;s/127.0.0.1<\/param>\s*<param name="port" type="integer">9080/192.168.33.10<\/param>\n\t\t\t<param name="port" type="integer">9080/' /opt/appserver/etc/appserver/appserver.xml

# restart services
/etc/init.d/appserver-php5-fpm restart
/etc/init.d/appserver restart
/etc/init.d/appserver-watcher restart
