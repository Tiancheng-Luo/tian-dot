#!/usr/bin/env bash
set -euo pipefail

file=/etc/ssh/sshd_config
cp -p $file $file.old &&
	awk '
$1=="PasswordAuthentication" {$2="no"}
$1=="PubkeyAuthentication" {$2="yes"}
$1=="Port" {$2="3236"}
$1==PermitRootLogin {$2=="yes"}
{print}
' $file.old > $file

/etc/init.d/sshd restart

