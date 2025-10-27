#!/bin/bash

if [ $# -eq 0 ]; then
    echo "pas de fichier indiqué"
    exit 1
fi

fichier="$1"
numerotation=1

while read -r line;
do
    http_code=$(curl -s -L -o /dev/null -w "%{http_code}" "$line")
    nombre_mots=$(curl -s "$line" | wc -w)
    encodage=$(lynx -dump -source "$line" | grep -i "charset=" | head -n 1 | cut -d'"' -f2)
    echo -e "$numerotation\t$http_code\t$nombre_mots\t$encodage\t${line}";
    ((numerotation++))
    sleep 1
done < "$fichier"; 