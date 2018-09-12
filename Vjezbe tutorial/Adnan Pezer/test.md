## Test

The square brackets ( [ ] ) in the if statement above are actually a reference to the command test. This means that all of the operators that test allows may be used here as well. Look up the man page for test to see all of the possible operators (there are quite a few) but some of the more common ones are listed below.
Operator 	Description
! EXPRESSION 	The EXPRESSION is false.
-n STRING 	The length of STRING is greater than zero.
-z STRING 	The lengh of STRING is zero (ie it is empty).
STRING1 = STRING2 	STRING1 is equal to STRING2
STRING1 != STRING2 	STRING1 is not equal to STRING2
INTEGER1 -eq INTEGER2 	INTEGER1 is numerically equal to INTEGER2
INTEGER1 -gt INTEGER2 	INTEGER1 is numerically greater than INTEGER2
INTEGER1 -lt INTEGER2 	INTEGER1 is numerically less than INTEGER2
-d FILE 	FILE exists and is a directory.
-e FILE 	FILE exists.
-r FILE 	FILE exists and the read permission is granted.
-s FILE 	FILE exists and it's size is greater than zero (ie. it is not empty).
-w FILE 	FILE exists and the write permission is granted.
-x FILE 	FILE exists and the execute permission is granted.

A few points to note:

= is slightly different to -eq. [ 001 = 1 ] will return false as = does a string comparison (ie. character for character the same) whereas -eq does a numerical comparison meaning [ 001 -eq 1 ] will return true.
When we refer to FILE above we are actually meaning a path. Remember that a path may be absolute or relative and may refer to a file or a directory.
Because [ ] is just a reference to the command test we may experiment and trouble shoot with test on the command line to make sure our understanding of its behaviour is correct.

