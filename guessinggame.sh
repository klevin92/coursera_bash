#!/bish/bash

user_win=0
right_answer="$(find . -type f | wc -l)"

function evaluate {
	read user_answer
	if [[ $user_answer -gt $right_answer ]] ;then
		echo "Too high!!! Try again"
		user_win=0
	fi

	if [[ $user_answer -lt $right_answer ]] ;then
		echo "Too low!!!  Try again"
		user_win=0
	fi

	if [[ $user_answer -eq $right_answer ]]; then
		echo "You are the Winner!!!"
		user_win=1
	fi

}
echo "Welcome to Guess GAME!!!"
echo "Try to guess how many fiels are in current directory:"

while [[ $user_win -eq 0 ]] ;do
	evaluate
done

