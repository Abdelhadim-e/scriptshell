#!/bin/bash


#exo : Paramètres

echo "Bonjour, vous avez rentré $# paramètres";
echo "Le nom du script est #0"

#Verif si 3eme parametre

param = "Liste des paramètres : $@";
if [ -n "$3" ]; then
	echo "3eme paramètres $3"
else
	echo "Il n'y a pas de 3eme parametres"
fi

echo $param;
