#!/usr/bin/env bash
# File: guessinggame.sh

function guess {

if [[ $1 -eq $2 ]]
then
	echo "You entered the: $2. Bravo. Yes this what I looking for" 
elif [[ $1 -gt $(($2+5)) ]]
then 
	echo "You entered: $2. I'm sorry more too much, Please enter again"
elif [[ $1 -gt $2 ]] && [[ $1 -le $(($2+5)) ]]
then
	echo "You entered: $2. A litle bit to much, Please enter again"
else
	echo "You entered: $2. I'm sorry not enough"
fi

}

i=0
cntfiles=$(ls | wc -l)

while [[ $cntfiles -ne $num ]]
do
	echo "Enter the number of files in this directory: "
	read num
	echo $(guess $num $cntfiles)
	let i=$i+1
done

echo "You guessed $i times"
