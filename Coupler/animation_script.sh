#!/bin/bash
# insert: 1) eps filename and then 2) field filename

var=$( h5ls $2 | awk '{print $5}'|sed 's/\/Inf\}//g' )

var2=$((var - 1))
echo $var2

h5topng -t 0:$var2 -R -S 3 -Zc dkbluered -a yarg -A $1 $2