#! /bin/bash
sysbench --num-threads=16 --max-requests=20000 --cpu-max-prime=50000 --test=cpu run >> ./cpu/cputest.txt
sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw prepare
sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw run >> ./fileio/fileiotest.txt
sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw cleanup
sysbench --test=memory --memory-total-size=2048M --memory-oper=read run >> ./memory/memorytestread.txt
sysbench --test=memory --memory-total-size=2048M --memory-oper=write run >> ./memory/memorytestwrite.txt
