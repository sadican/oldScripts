#!/bin/sh
# github setup script

echo ">>> Starting..."

echo ">>> Installing git..."
sudo apt-get install -y git-core git-gui git-doc
echo ">>> Git was installed..."

echo ">>> You need to generate an SSH key..."
echo ">>> Please give me your e-mail address..."
read email
ssh-keygen -t rsa -C "$email"

echo ">>> Now, go to ssh directory and open id_rsa.pub file,"
echo ">>> Copy everyting inside and paste to SSH Keys part of your github account..."
echo ">>> When you done that press any key to continue..."
read

echo ">>> Lets check if everything is OK..."
ssh -T git@github.com

echo ">>> Please give your name & surname..."
read name_and_surname

git config --global user.name "$name_and_surname"
git config --global user.email "$email"

echo ">>> THE END"
exit 0
