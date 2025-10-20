#!/bin/bash

if [ $# -ne 1 ]; then 
    echo "Usage: $0 <type>"
    exit 1 
fi

TYPE=$1

for ANNEES in 2016 2017 2018
do
    COUNT=$(./compte_par_type.sh $ANNEES $TYPE)
    echo "$ANNEES : $COUNT"
done