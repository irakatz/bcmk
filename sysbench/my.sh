#! /bin/bash
sysbench --num-threads=16 --test=cpu run >>./cpu/cputest.txt
sysbench --num-threads=16 --test=fileio --file-test-mode=rndrw prepare
sysbench --num-threads=16 --test=fileio --file-test-mode=rndrw run >>./fileio/fileiotest.txt
sysbench --num-threads=16 --test=fileio --file-test-mode=rnd./rw cleanup
sysbench --test=memory run >>./memory/memorytest.txt