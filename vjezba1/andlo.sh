#!/bin/bash
echo "&& AND logical  operator"
a=1
b=1
c=24
d=47
if [ "$a" -eq "$b" ]
 then
   echo "$a is equal to $b."
fi
if [ "$c" -eq 24 -a "$d" -eq 47 ]
  then
echo "$c equals 24 and $d equals 47."
fi
