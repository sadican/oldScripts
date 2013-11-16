#!/bin/sh

# global variables
message=""
step=1
iteration=1
username="sadican"
email="sadican09@gmail.com"

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

    iteration=$(($iteration+1))
    return $TRUE
}

if [ $step -eq $iteration ]; then
    mkdir /home/$USER/.ssh
    flag=$?
fi
report $flag "create ssh directory" $step

if [ $step -eq $iteration ]; then
    ssh-keygen -t rsa -C $email
    flag=$?
fi
report $flag "generate ssh key for email" $step

if [ $step -eq $iteration ]; then
    ssh-add git_id
    flag=$?
fi
report $flag "set passphrase" $step

if [ $step -eq $iteration ]; then
    mv/home/$USER/github/git_id /home/$USER/.ssh/
    flag=$?
fi
report $flag "move RSA file" $step

if [ $step -eq $iteration ]; then
    sudo apt-get install -y xclip
    flag=$?
fi
report $flag "install xclip" $step

if [ $step -eq $iteration ]; then
    xclip -sel clip < /home/$USER/.ssh/git_id.pub
    flag=$?
fi

report $flag "copy code to clipboard" $step

if [ $step -eq $iteration ]; then
    git config --global $USER $username
    flag=$?
fi

report $flag "set default name for git" $step

if [ $step -eq $iteration ]; then
    git config --global $email $email
    flag=$?
fi

report $flag "set default email for git" $step

if [ $step -eq $iteration ]; then
    git config --global credential.helper 'cache --timeout=3600'
    flag=$?
fi

report $flag "set the cache to timeout after 3600 seconds" $step

exit 0
