mininetTest() {
    sudo mn --custom /home/$USER/github/ranet/$1.py --topo $1 --test pingall --controller=remote,ip=127.0.0.1,port=6633
}

gitUpdate() {
    git add $1 && git commit -m $2 && git push
}

alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias reboot='sudo reboot'
alias install='sudo apt-get install'
alias shutdown='sudo shutdown -h now'

alias renameSim='rm netsim.py && mv netsim.py.1 netsim.py'
alias minEx='cd /home/$USER/mininet/examples'

alias add='git add'
alias commit='git commit -m'
alias pull='git pull'
alias status='git status'
alias push='git push'
alias remoteadd='git remote add origin https://github.com/sadican/ranet'
alias gitup=gitUpdate
alias cdfloodlight='cd /home/$USER/floodlight/'
alias cdranet='cd /home/$USER/github/ranet/'
alias cddebshell='cd /home/$USER/github/debshell/'
alias cdranet='cd /home/$USER/github/ranet/'
alias runfloodlight='java -jar /home/$USER/floodlight/target/floodlight.jar'
alias mntest=mininetTest