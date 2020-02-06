#!/bin/bash

#exo : Appreciation

sh concat.sh "$#" 0;

#Regex
regex='^[0-9]+$';

#Comparaison string - regex
#Condition comparaison note
if [ "$?" -eq 1  ]; then
	exit 1;
else
	while true; do
		echo "Indiquer votre note :";
		read -e -n10 note

		if [[ $note =~ regex ]]; then
			if[[ $note -le 20 ]] && [[ $note -ge 16 ]]; then
				echo"Très bien!"
			elif[[ $note -lt 16 ]] && [[ $note -ge 14 ]]; then
				echo "Bien!"
			elif [[ $note -lt 14 ]] && [[ $note -ge 12 ]]; then
				echo "Assez bien!"
			elif [[ $note -lt 10 ]] && [[ $note -ge 0 ]]; then
				echo "Insuffisant!"
			else
				echo "Veuillez rentrer un nombre entre 0 - 20"
			fi
		else
			exit 1;
		fi
	done
fi
