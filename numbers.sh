#!/bin/bash

# creating datafile
echo "=> Creating datafile ..."
let n=0
echo $n >| numbers.txt
time while [ $n -lt 10000 ]; do
  let n=n+1
  echo $n >> numbers.txt
done

# use local or mapreduce
echo "=> Running pig ..."
# pig numbers.pig         # default is mapreduce
time pig -x local numbers.pig

