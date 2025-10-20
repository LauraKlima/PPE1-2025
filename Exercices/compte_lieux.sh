#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Usage: $0 <année|*> <mois|*> <nombre>"
  exit 1
fi

ANNEE=$1
MOIS=$2
NB=$3

if [ "$ANNEE" = "*" ]; then
    PATTERN_ANNEE="*"
else
    PATTERN_ANNEE="$ANNEE"
fi

if [ "$MOIS" = "*" ]; then
    PATTERN_MOIS="*"
else
    PATTERN_MOIS="$MOIS"
fi

FICHIERS=$(find ann/$PATTERN_ANNEE -type f -name "${PATTERN_ANNEE}_${PATTERN_MOIS}_*.ann" 2>/dev/null)

if [ -z "$FICHIERS" ]; then
  echo "Aucun fichier trouvé pour $ANNEE/$MOIS"
  exit 0
fi

grep -h "Location" $FICHIERS \
  | awk '{$1=$2=$3=$4=""; sub(/^ +/, ""); print}' \
  | sort | uniq -c | sort -nr | head -n $NB
