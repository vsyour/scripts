#!/bin/bash
echo "----------1. 购买VPS主机：https://www.vultr.com/?ref=8391117-6G";sleep 5;
echo "----------2. Blog: https://vksec.com";sleep 5;
echo "----------3. generate ssh----------";sleep 5;
id_rsa_path="${HOME}/.ssh/id_rsa"
id_rsa_pub_path="${HOME}/.ssh/id_rsa.pub"
auth_path="${HOME}/.ssh/authorized_keys"
ssh_path="${HOME}/.ssh/"
if [ ! -d "$ssh_path" ]
then
        mkdir "$ssh_path"
        ssh-keygen
else
        echo "ssh floder already exists"
fi

if [ ! -f "$auth_path" ]
then
        cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
else
        echo "authorized_keys already exists"
fi
echo "----------restart ssh----------"
sudo service ssh restart
echo "----------shell id_rsa----------"
cat ~/.ssh/id_rsa
echo "----------shell IP----------"
WANIP=`curl ifconfig.me`
echo "IP: $WANIP";
echo "USER: $USER"

