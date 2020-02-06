#!/bin/bash

#exo : Vérification du nombre de paramètres

#Execution verif param début fichier
# 2 mots > concat

if [ "$#" != 2 ]; then
	echo "Veuillez entrer deux paramètres";
	exit 1;
else
	concat = "$1 $2";
	echo "$concat";
fi
