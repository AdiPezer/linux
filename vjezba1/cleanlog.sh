#!/bin/bash
echo "Kao root korinsik potrebno je da ocistimo logove"
LOG_DIR=/var/log
ROOT_UID=0 
E_XCD=86 
E_NOTROOT=87 

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

cat /dev/null > messages
cat /dev/null > wtmp

echo "Log files cleaned up."
exit 0
