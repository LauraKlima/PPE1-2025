#!/bin/bash

if [ $# -eq 0 ]; then
    echo "pas de fichier indiqué"
    exit 1
fi

echo "<html>"
echo "<head>"
    echo "<meta charset="UTF-8" />"
echo "</head>"

echo "<body>"
echo "<table>"

echo "<tr><th>Numéro</th><th>URLs</th><th>Nombre de mots</th><th>Encodage</th><th>Requête</th></tr>"

fichier="$1"
numerotation=1

while read -r line;
do
    http_code=$(curl -s -L -o /dev/null -w "%{http_code}" "$line")
    nombre_mots=$(curl -s "$line" | wc -w)
    encodage=$(lynx -dump -source "$line" | grep -i "charset=" | head -n 1 | cut -d'"' -f2)
    echo "<tr><td>$numerotation</td><td>${line}</td><td>$nombre_mots</td><td>$encodage</td><td>$http_code</td></tr>"
    ((numerotation++))
    sleep 1
done < "$fichier"

echo "</table>"
echo "</body>"
echo "</html>"