#!/bin/bash

COMPONENT=user

source components/common.sh

Print "Installing Maven" "yum install maven -y"
yum install maven -y
Stat $?

Print "Adding RoboShop Project User" "useradd roboshop"
id roboshop || useradd roboshop
Stat $?

Print "Download Shipping COde" 'curl -s -L -o /tmp/shipping.zip "https://dev.azure.com/DevOps-Batches/f635c088-1047-40e8-8c29-2e3b05a38010/_apis/git/repositories/9c06b317-6353-43f6-81e2-aa4f5f258b2d/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master&resolveLfs=true&%24format=zip&api-version=5.0&download=true"'

curl -s -L -o /tmp/shipping.zip "https://dev.azure.com/DevOps-Batches/f635c088-1047-40e8-8c29-2e3b05a38010/_apis/git/repositories/9c06b317-6353-43f6-81e2-aa4f5f258b2d/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master&resolveLfs=true&%24format=zip&api-version=5.0&download=true"
Stat $?

Print "Exctract Shipping COde" "mkdir /home/roboshop/shipping && cd /home/roboshop/shipping && unzip /tmp/shipping.zip"
mkdir /home/roboshop/shipping && cd /home/roboshop/shipping && unzip /tmp/shipping.zip
Stat $?

Print "Maven Compile Code" "mvn clean package && mv target/shipping-1.0.jar shipping.jar"
mvn clean package && mv target/shipping-1.0.jar shipping.jar
Stat $?


# cp /home/roboshop/shipping/systemd.service /etc/systemd/system/shipping.service
# systemctl daemon-reload
# systemctl start shipping
# systemctl enable shipping