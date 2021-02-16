#!/bin/bash

COMPONENT=rabbitmq

source components/common.sh

Print "Install ErLang" "yum install https://packages.erlang-solutions.com/erlang/rpm/centos/7/x86_64/esl-erlang_22.2.1-1~centos~7_amd64.rpm -y"
yum install https://packages.erlang-solutions.com/erlang/rpm/centos/7/x86_64/esl-erlang_22.2.1-1~centos~7_amd64.rpm -y
Stat $?

Print "Setup RabbitMQ Repos" "curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash"
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash
Stat $?

Print "Install RabbitMQ" "yum install rabbitmq-server -y"
yum install rabbitmq-server -y
Stat $?

Print "Start RabbitMQ Service"
systemctl enable rabbitmq-server && systemctl start rabbitmq-server
Stat $?


Print "Create Application User in RabbitMQ" 'rabbitmqctl add_user roboshop roboshop123 && rabbitmqctl set_user_tags roboshop administrator && rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*" '
rabbitmqctl add_user roboshop roboshop123 && rabbitmqctl set_user_tags roboshop administrator && rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"
Stat $?
