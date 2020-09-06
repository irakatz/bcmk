#!/bin/bash  

starttime=$(date +%Y-%m-%d\ %H:%M:%S)
echo $starttime

for i in {1..10}  
do  
echo $i >> ./benchsh/benchtest.txt
wget -qO- bench.sh | bash >> ./benchsh/benchtest.txt
echo >> >> ./benchsh/benchtest.txt
done  
