#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install default-jdk -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
jenkins --version
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw status
echo "check if the jenkins is working using public ip :8080"
sudo chmod -R 777 /var/lib/jenkins
echo "change the inbound rules in securitygroups"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "copy and paste the password"
echo "set username and password for jenkins"




