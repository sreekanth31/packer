#!/bin/bash
# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

#!/bin/bash
#update yum packages
sudo yum update -y
sudo yum install wget unzip -y
#download java
cd /tmp
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
tar -zxvf jdk-8u131-linux-x64.tar.gz
mv jdk1.8.0_131 /opt/jdk
cd /opt/jdk
chown -R root.root *
cd /bin
ln -s /opt/jdk/bin/java java
cd /opt/
wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.33/bin/apache-tomcat-8.5.33.tar.gz
tar -zxvf apache-tomcat-8.5.33.tar.gz
mv apache-tomcat-8.5.33 tomcat
chmod 755 /opt/tomcat/bin/*.sh
sh /opt/tomcat/bin/startup.sh


