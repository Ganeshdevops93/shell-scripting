#!/bin/bash

COMPONENT=payment

source components/common.sh

Print "Install Python3" "yum install python36 gcc python3-devel -y"
yum install python36 gcc python3-devel -y
Stat $?

Print "Create RoboShop User" "id roboshop || useradd roboshop"
id roboshop || useradd roboshop
Stat $?

Print "Download Payment Code" 'curl -L -s -o /tmp/payment.zip "https://dev.azure.com/DevOps-Batches/f635c088-1047-40e8-8c29-2e3b05a38010/_apis/git/repositories/cd32a975-ee45-4b3b-a08e-8e97c3ca7733/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master&resolveLfs=true&%24format=zip&api-version=5.0&download=true"'
curl -L -s -o /tmp/payment.zip "https://dev.azure.com/DevOps-Batches/f635c088-1047-40e8-8c29-2e3b05a38010/_apis/git/repositories/cd32a975-ee45-4b3b-a08e-8e97c3ca7733/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master&resolveLfs=true&%24format=zip&api-version=5.0&download=true"
Stat $?

Print "Extracting Payment Code" "mkdir -p /home/roboshop/payment && cd /home/roboshop/payment && unzip /tmp/payment.zip"
mkdir -p /home/roboshop/payment && cd /home/roboshop/payment && unzip /tmp/payment.zip
Stat $?


Print "Install Python Dependencies" "cd /home/roboshop/payment  && pip3 install -r requirements.txt"
cd /home/roboshop/payment  && pip3 install -r requirements.txt
Stat $?
exit

USER_ID=$(id -u roboshop)
GROUP_ID=$(id -g roboshop)
sed -i -e "/^uid/ c uid=${USE}"

Setup the service
chown roboshop:roboshop /home/roboshop -R
# mv /home/roboshop/payment/systemd.service /etc/systemd/system/payment.service
# systemctl daemon-reload
# systemctl enable payment
# systemctl start payment