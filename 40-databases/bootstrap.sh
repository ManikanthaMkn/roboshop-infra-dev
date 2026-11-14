#!/bin/bash
component=$1
app_environment=$2
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/ManikanthaMkn/ansible-roboshop-roles-tf.git

cd ansible-roboshop-roles-tf
git pull
ansible-playbook -e "component=$component" -e "app_environment=$app_environment" roboshop.yaml