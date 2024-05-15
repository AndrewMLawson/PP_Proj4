#!/bin/bash

#number of threads:
for t in 1024 1024*64 1024*128 1024*256 1024*512 1024*1024 1024*1024*2 1024*1024*3 1024*1024*4 1024*1024*5 1024*1024*6 1024*1024*7 1024*1024*8
do
	g++ all04.cpp -DARRAYSIZE=$t -o proj4 -lm -fopenmp
        ./proj4
done
