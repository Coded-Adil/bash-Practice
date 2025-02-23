#!/usr/bin/zsh
name=$1
compliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)
echo "Welcome $name"
sleep 1
echo "I was waiting for you $name"
sleep 1
echo "You are looking $compliment as always $name"
sleep 3
echo "You are currently loged in as $user and you are in the $whereami directory Also today is $date"
