#!/bin/bash

#exo : Afficher le contenu d'un repertoire

sh concat.sh "$#" 0;

#Affichage idenf user plus à 100
if [ "$?" !=1 ]; then
	'awf -F: ($3 > 100)
	{
		printf "User: %s | UID:%s\n",$1$3
	}'
	/etc/psswd
fi
