#!/bin/bash

# Put your code here
s=$1
len=${#s}
for ((i=$len-1; i>=0; i--))
do
c=${s:$i:1}
if [[ $c =~ [a-z] ]]; then
restr=$restr${c^^}
elif [[ $c =~ [A-Z] ]]; then
restr=$restr${c,,}
else
restr=$restr${c}
fi
done
echo "$restr"   
