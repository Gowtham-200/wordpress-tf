#!/bin/bash
sudo yum -y install git
sudo yum -y install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/Gowtham-200/wordpress-docker.git
cd /
sudo mv wordpress-docker/* /home/ec2-user/
cd /home/ec2-user/
docker-compose up -d
