#!/bin/bash
echo "Start installing MongoDb"
echo "$(sudo apt-get update)"
echo "deb https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo 'apt-get install mongodb-org:'
echo "$(sudo apt-get install -y mongodb-org)"
echo 'systemctl start mongod:'
echo "$(sudo systemctl start mongod)"
echo 'systemctl enable mongod:'
echo "$(sudo systemctl enable mongod)"
echo 'systemctl status mongod:'
echo "$(sudo systemctl status mongod)"
