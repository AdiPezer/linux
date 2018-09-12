#!/bin/bash
# or example

if [ $USER == 'adi' ] || [ $USER == 'niko' ]
then
ls -alh
else
ls
fi
