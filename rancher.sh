#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo usermod -aG docker ec2-user
sudo service docker start
sudo docker run -d --privileged --name rancher --restart=unless-stopped -v /opt/rancher:/var/lib/rancher  -p 80:80 -p 443:443 rancher/rancher:latest
