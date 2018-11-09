#!/bin/bash

threads=$1
file_name=$2

inputfilename=$(echo $2 | grep -o "{0-9A-Za-z_\.\-}*txt")

name_file="$(cut -d/ -f2 <<< $file_name)"

outputfile="results/$name_file.speedups.csv"

echo "#threads,exec_time,speedup" > $outputfile

CircuitRouter-SeqSolver/CircuitRouter-SeqSolver $2

seqtime=$(cat "$2.res" | grep "Elapsed time" | tr -s ' ' | cut -d ' ' -f 4)

echo "1S,$seqtime,1" >> $outputfile

for i in $(seq 1 $1)
do
	CircuitRouter-ParSolver/CircuitRouter-ParSolver -t $i $2
	partime=$(cat "$2.res" | grep "Elapsed time" | tr -s ' ' | cut -d ' ' -f 4)
	speedup=$(echo "scale=6; ${seqtime}/${partime}" | bc)
	echo "$i,$partime,$speedup" >> $outputfile
done
