#!/bin/sh
# Unattended-Upgrade::Automatic-Reboot "false"
apt-get remove needrestart -y
#Update and Upgrade Ubuntu OS
apt update && apt -y upgrade
#Download Artifactory 
echo "deb https://releases.jfrog.io/artifactory/artifactory-debs xenial main" | sudo tee -a /etc/apt/sources.list.d/artifactory.list
# Import repository GPG key
curl -fsSL  https://releases.jfrog.io/artifactory/api/gpg/key/public|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/artifactory.gpg
#Update again
sudo apt update
#Install Artifactory
sudo apt install jfrog-artifactory-oss -y
#Start Artifactory
sudo systemctl start artifactory.service
# Display Artifactory Status
sudo systemctl status artifactory.service
# Check logs by tailing
# sudo tail -f /var/opt/jfrog/artifactory/log/artifactory-service.log
# Check UI by curl
curl localhost:8081