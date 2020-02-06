#!/bin/bash

#exo : Utilisateur existe t-il

sh concat.sh "$#" 1;

#Condition user = !false
#Affichage identifer user
if [ "$?" -eq 1 ]; then
	exit 1;
elif getent passwd | grep -q "$1"
then
	getent paswwd "$i" | cut -d: -f3
else
	echo "L'utilisateur saisie n'existe pas"
	exit 1;
fi
