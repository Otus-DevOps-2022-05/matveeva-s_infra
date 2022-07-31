#!/bin/bash
echo "$(sudo apt update)"
echo 'install git:'
echo "$(sudo apt install git)"
echo "$(cd ~)"
echo 'git clone monolith repo:'
echo "$(git clone -b monolith https://github.com/express42/reddit.git)"
echo 'bundle install:'
echo "$(cd reddit; bundle install)"
echo 'puma -d'
echo "$(puma -d)"
echo 'ps aux | grep puma'
echo "$(ps aux | grep puma)"
