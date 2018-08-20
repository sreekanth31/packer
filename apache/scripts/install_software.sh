#!/bin/bash
yum install wget unzip vim -y
yum install httpd* -y
cd /tmp/
wget https://github.com/BlackrockDigital/startbootstrap-grayscale/archive/gh-pages.zip
unzip gh-pages.zip
cp -r gh-pages/* /var/www/html/
systemctl start httpd
