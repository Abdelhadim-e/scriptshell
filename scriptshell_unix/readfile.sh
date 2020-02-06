#!/bin/bash

#exo : lecture au clavier

sh concat.sh "$#" 1;

if [ "$?" -eq 1 ]; then
	exit 1;
else
	echo "Entrer votre nom: "
	read nom;
	for file in "$1/*.txt"; do
		for f in $file; do
			echo "Souhaitez vous affichier le fichier $f (y or n)"
			read -n10 -e rep
			if( $rep == "y" ]; then
				more "$f"
			fi
		done
	done
fi
