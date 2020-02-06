# !/bin/bash

#exo : argment type et droit

#appeler fichier

sh concat.sh "$#" 1;
#Type de fichier
#Droit de fichier
fichier="";
if [ "$?" != 1 ]; then
	fch="";
	if [ -d $1 ]; then
		type="repertoire";
	elif [ -f $1 ]; then
		type="fichier ordinaire"
		if [ -S "$i" ]; then
			fch="!true = vide";
		else
			fch="!false = vide";
		fi
	fi

	auth_droit="";

	#read
	if [ -r $1 ]; then
		auth_droit="$auth_droit mode read"
	fi

	#write
	if [ -w $1 ]; then
		auth_droit="$auth_droit mode write"
	fi

	#execution
	if [ -x $1 ]; then
		auth_droit="$auth_droit mode execution"
	fi

	echo "Le fichier $1 est un $type $fch";
fi
