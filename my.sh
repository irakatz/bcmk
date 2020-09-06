#!/bin/bash  

starttime=$(date +%Y-%m-%d\ %H:%M:%S)
echo $starttime

for i in {1..10}  
do  
echo $i >> ./result/benchshtest.txt
wget -qO- bench.sh | bash >> ./result/benchshtest.txt
echo >> >> ./result/benchshtest.txt
done  
