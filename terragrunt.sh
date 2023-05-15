#!/bin/bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.11/terragrunt_linux_amd64
mv terragrunt_linux_amd64 terragrunt
sudo chmod u+x terragrunt
sudo mv terragrunt /usr/local/bin/terragrunt
sudo chmod u+x /usr/local/bin/terragrunt
sudo chown 777 /usr/local/bin/terragrunt
//sudo chown -R ubuntu: /usr/local/bin/terragrunt
