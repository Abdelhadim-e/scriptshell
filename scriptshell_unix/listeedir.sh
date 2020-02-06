#!/bin/bash

#exo : Afficher le contenu d'un repertoire

sh concat.sh "$#" 1;

#Verif dossier != false
#Liste des fichiers
#Liste des répertoires
#Condition !false = existe
if [ "$?" !=1 ]; then

	if [ -d $1 ]; then
	echo "###### Fichiers dans $1";
	find $1 -type f

	echo "###### Répertoires dans $1";
	find $1 -type d
else
	echo"Dossier inexistant / fichier !false répertoire";
	exit 1;
fi
