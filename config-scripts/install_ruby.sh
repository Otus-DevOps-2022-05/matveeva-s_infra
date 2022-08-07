#!/bin/bash
echo "Start installing ruby"
sudo apt update
echo "$(sudo apt install -y ruby-full ruby-bundler build-essential)"
echo "ruby version: "
echo "$(ruby -v)"
echo "bundler version: "
echo "$(bundler -v)"
