#!/bin/bash
echo "Start installing MongoDb"
echo "$(sudo apt-get update)"
echo 'wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -'
echo "$(wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -)"
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodborg/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
echo 'apt-get install mongodb-org:'
echo "$(sudo apt-get install -y mongodb-org)"
echo 'systemctl start mongod:'
echo "$(sudo systemctl start mongod)"
echo 'systemctl enable mongod:'
echo "$(sudo systemctl enable mongod)"
echo 'systemctl status mongod:'
echo "$(sudo systemctl status mongod)"
