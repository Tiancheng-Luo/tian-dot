#!/usr/bin/sh

#!/usr/bin/env bash
touch ~/.bash_eternal_history
{
	echo "\n"
	echo 'export HISTFILESIZE='
	echo 'export HISTSIZE='
	echo 'export HISTTIMEFORMAT="[%F %T] "'
	echo 'export HISTFILE=~/.bash_eternal_history'
	echo 'PROMPT_COMMAND="history -a; $PROMPT_COMMAND"'
} >> ~/.bashrc
source ~/.bashrc

set -euo pipefail

while IFS= read -r line; do
	    sudo add-apt-repository $line
    done < ./ppa.txt

apt -y update
apt -y upgrade

useradd user1 -m -g users -G sudo

