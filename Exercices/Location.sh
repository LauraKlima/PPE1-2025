#!/bin/bash

for annee in 2016 2017 2018; do 
    echo "lieux en $annee:"

    cat "$annee"/* | grep Location | wc -l
done