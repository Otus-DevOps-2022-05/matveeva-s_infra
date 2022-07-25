#!/bin/bash
echo 'This YC CLI command will create VM instance:'
echo 'yc compute instance create \'
echo ' --name reddit-app \'
echo ' --hostname reddit-app \'
echo ' --memory=4 \'
echo ' --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \'
echo ' --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \'
echo ' --metadata serial-port-enable=1 \'
echo ' --metadata-from-file user-data=config.yaml'
echo 'starting to execute...'
yc compute instance create \
 --name reddit-app \
 --hostname reddit-app \
 --memory=4 \
 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --metadata serial-port-enable=1 \
 --metadata-from-file user-data=config.yaml
echo 'finish!'
