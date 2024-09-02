#!/bin/bash
# Update package list and upgrade all packages
sudo apt-get update -y && sudo apt-get upgrade -y
# Install Java (required by Jenkins)
sudo apt-get install -y openjdk-17-jdk
# Install Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y jenkins
echo 'jenkins ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/jenkins
# Start Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins
# Install Apache2
sudo apt-get install -y apache2
# Start Apache2 service
sudo systemctl start apache2
sudo systemctl enable apache2
# Output Jenkins initial admin password
echo "Jenkins initial admin password: $(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)"