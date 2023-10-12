#!/bin/bash

$USER_NAME=''
$USER_EMAIL=''

echo 'ansible install'
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

echo '====Git設定===='
sudo apt update
sudo apt install -y git
git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL
git config --global --add merge.ff false
git config --global --add pull.ff only
echo '\n====設定情報===='
git config --list


