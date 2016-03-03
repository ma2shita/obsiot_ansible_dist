#!/bin/bash
if [ $(date +%s) -lt 1000000000 ]; then
  echo "sysdate is '$(date)', please check and set clock"
  echo "exit."
  exit 1
fi
if [ "$1" == "yes" ]; then
  cd "$(dirname $0)"
  for playbook in $(ls playbook.d/*.yml)
  do
    echo $playbook
    ansible-playbook $playbook
  done
else
  echo "Need 'yes'"
  echo "Try => $0 yes"
  exit 1
fi
exit 0
