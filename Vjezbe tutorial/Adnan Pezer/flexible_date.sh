#!/bin/bash
# A date is the first command line argument

clean_date=$( echo $1 | sed 's/[ /:^#]/-/g' )

echo $clean_date
