#!/usr/bin/env bash
set -euo pipefail

while IFS= read -r line; do
	    sudo add-apt-repository $line
    done < ./ppa.txt

apt -y update
apt -y upgrade

useradd user1 -m -g users -G sudo

