#!/bin/bash
# Make a php copy of any html files

for value in $1/*.html
do
cp $value $1/$( basename -s .html $value ).php
done
