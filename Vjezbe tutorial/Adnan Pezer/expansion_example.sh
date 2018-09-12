#!/bin/bash
# Basic arithmetic using double parentheses

echo "This is the basic format. As you can see we may space it out nicely for readability without the need for quotes."
echo 'a=$(( 4 + 5 ))'
a=$(( 4 + 5 ))
echo $a # 9

echo "As you can see, it works just the same if we take spacing out."
echo 'a=$((3+5))'
a=$((3+5))
echo $a # 8

echo "We may include variables without the preceding $ sign."
echo 'b=$(( a + 3 ))'
b=$(( a + 3 ))
echo $b # 11

echo "Variables can be included with the $ sign if you prefer."
echo 'b=$(( $a + 4 ))'
b=$(( $a + 3 ))
echo b$ # 12

echo "This is a slightly different form. Here the value of the variable b is incremented by 1 (using the same mechanism illustrated under let). When we do this we don't need the $ sign preceding the brackets."
echo '(( b++ ))'
(( b++ ))
echo $b # 13

echo "This is a slightly different form of the previous example. Here the value of the variable b is incremented by 3. It is a shorthand for b = b + 3."
echo '(( b += 3 ))'
(( b += 3 ))
echo $b # 16

echo "Unlike other methods, when we do multiplication we don't need to escape the * sign."
echo 'a=$(( 4 * 5 ))'
a=$(( 4 * 5 ))
echo $a #20
