#!/bin/bash

threads=$1
file_name=$2
./CircuitRouter-ParSolver -t $1 $2
par_time=$(grep grep -o -E '[0-9]+' "$2.res")
echo $par_time
cd ../CircuitRouter-SeqSolver
make
./CircuitRouter-SeqSolver $2

speed_up=
echo $par_time
cd ../CircuitRouter-ParSolver
cat > "$2.speedups.cvs" <<EOF  
Number of tasks    = $1		$par_time
EOF



