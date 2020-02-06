#!/bin/bash

#exo : Création utilisateur

sh concat.sh "$#" 0;

#Verif si user !false = root
newuser = "Inscription new user";
if [ $USER == 'root' ]; then
	echo $newuser;
	echo "Nouveau Login:";
fi
