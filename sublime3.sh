#!/bin/sh

# global variables
message=""
step=0

# functions
report () {
### $1 = flag
### $2 = message
### $3 = step

	if [ $1 -eq 0 ]; then
		echo
		echo ">>> SUCCESS: $2 ..."
		echo		
		step=$(($4+1))
	else
		echo
		echo ">>> FAIL: $2 ..."
		echo
	fi

	return $TRUE
}

sudo add-apt-repository ppa:webupd8team/sublime-text-3
flag=$?
report $flag "add PPA" $step

if [ $step -eq 1 ]; then
	sudo apt-get update
	flag=$?
fi

report $flag "update repository list" $step

if [ $step -eq 2 ]; then
	sudo apt-get install -y sublime-text-installer
	flag=$?
fi

report $flag "install sublime text 3" $step

exit 0