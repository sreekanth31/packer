#!/bin/bash
# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done
#!/bin/bash
cd /tmp/
yum install wget unzip -y
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
rpm -ivh jdk-8u131-linux-x64.rpm
wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32-windows-x64.zip
unzip apache-tomcat-8.5.32-windows-x64.zip
mv apache-tomcat-8.5.32 /opt/tomcat
chmod -R 755 /opt/tomcat/bin
rm -rf /opt/tomcat/webapps/*
wget https://updates.jenkins-ci.org/download/war/2.133/jenkins.war
cp jenkins.war /opt/tomcat/webapps/
/opt/tomcat1/bin/startup.sh

