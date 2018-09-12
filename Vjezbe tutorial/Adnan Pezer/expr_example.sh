#!/bin/bash
# Basic arithmetic using expr
echo "This is the basic format. Note that there must be spaces between the items and no quotes."
echo " 5 + 4 "
expr 5 + 4

echo"If we do put quotes around the expression then the expression will not be evaluated but printed instead." 
echo ""5 + 4""
expr "5 + 4"

echo "If we do not put spaces between the items of the expression then the expression will not be evaluated but printed instead."
echo "5+4"
expr 5+4

echo "Some characters have a special meaning to Bash so we must escape them (put a backslash in front of) to remove their special meaning."
echo " 5 \* $1 "
expr 5 \* $1

echo "Here we demonstrate the operator modulus. The modulus is the remainder when the first item is divided by the second item."
echo " 11 % 2 "
expr 11 % 2

echo "This time we're using expr within command substitution in order to save the result to the variable a."
echo " a=$ ( expr 10 - 3 ) "
a=$( expr 10 - 3 )
echo $a #7
