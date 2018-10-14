#!/bin/bash
# ip port range change
echo 10240 65535 > /proc/sys/net/ipv4/ip_local_port_range
# Install codedeploy agent
yum update -y && yum install -y ruby wget
cd /home/ec2-user
wget https://aws-codedeploy-ap-northeast-2.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
yum install -y nodejs
