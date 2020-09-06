#!/bin/bash  

starttime=$(date +%Y-%m-%d\ %H:%M:%S)
echo $starttime

for i in {1..10}  
do  
echo $i >> ./result/benchtest.txt
wget -qO- bench.sh | bash >> ./result/benchtest.txt
echo >> >> ./result/benchtest.txt
done  
