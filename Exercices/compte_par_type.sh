#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <annee> <type>"
    exit 1
fi

ANNEE=$1
TYPE=$2

if [ ! -d "$ANNEE" ]; then
    echo "Le dossier $ANNEE n'existe pas."
    exit 1
fi

COUNT=$(grep -roh "$TYPE" "$ANNEE"/*.ann | wc -l)

echo "$COUNT"