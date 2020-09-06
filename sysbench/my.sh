#! /bin/bash
sysbench --num-threads=16 --max-requests=20000 --test=cpu run >> ./cpu/cputest.txt
sysbench --num-threads=16 --test=fileio --file-test-mode=rndrw prepare
sysbench --num-threads=16 --test=fileio --file-test-mode=rndrw run >> ./fileio/fileiotestrndrw.txt
sysbench --num-threads=16 --test=fileio --file-test-mode=rndrw cleanup
sysbench --test=memory --memory-total-size=2048M --memory-oper=read run >> ./memory/memorytestread.txt
sysbench --test=memory --memory-total-size=2048M --memory-oper=write run >> ./memory/memorytestwrite.txt
