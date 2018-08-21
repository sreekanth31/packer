#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

#!/bin/bash
sudo yum install wget unzip vim -y
#install nginx
cd /tmp
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum --enablerepo=epel install nginx -y
wget https://github.com/BlackrockDigital/startbootstrap-grayscale/archive/gh-pages.zip
unzip gh-pages.zip
cp -r startbootstrap-grayscale-gh-pages/* /usr/share/nginx/html/
service nginx start


