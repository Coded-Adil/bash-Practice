#! /usr/bin/zsh

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "You chosen the $type class. Your HP is $hp and Your Attack is $attack"

echo "You Died";

# First beast battle

beast=$(( $RANDOM % 2 ))

echo "Your First Beast Approaches. Prepare To Battle. Pick A Number Between 0-1. (0/1)";

read tarnished

if [[ $beast == $tarnished ]]; then
	hp=$(( $hp - 1 ))
	if [[ $hp > 0 ]]; then
		echo "Beast VANQUISHED!! Congrats fellow tarnished";
		echo "Your Current HP is $hp"
	else
		echo "Beast VANQUISHED!! But ";
		echo "You Died"
		exit 1
	fi
else
	echo "You Died"
	exit 1
fi

sleep 2

#First Boss Battle 

echo "Boss Battle. Get Scared. It's Margit. Pick A Number Between 0-9. (0/9)";

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	echo "Beast VANQUISHED!! Congrats fellow tarnished";
else
	echo "You Died"
fi
