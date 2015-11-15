#!/bin/bash

[ -e /var/webui/config/system.sh ] && . /var/webui/config/system.sh 

# SSH
/sbin/iptables -A INPUT -p tcp --dport ${system_ssh_port:-22} -j ACCEPT
/sbin/ip6tables -A INPUT -p tcp --dport ${system_ssh_port:-22} -j ACCEPT

exit 0
