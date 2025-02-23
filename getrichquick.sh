#!/usr/bin/zsh
echo "Enter Your Name: "
read name
echo "Enter Your Age: "
read age
echo "Hello, $name, You are $age years old"

sleep 2

echo "Calculating"
echo ".........."
sleep 1
echo "**........"
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 1
echo "**********"


getrich=$((( $RANDOM % 15) + $age ))
echo "$name, you will become a millionare when you are $getrich years old"
