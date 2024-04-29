#!/bin/bash

#Désinstallation des packages necessaires 
sudo pip uninstall -r requirements.txt

#Recuperation du nom de la raspberry
nom_raspberry=$(whoami)
echo "$nom_raspberry"

#Suppresion du fichier de lancement et log
cd
rm lancement_kosmos.sh
rm logfile_kosmos

#Effacer le contenu du crontab
#[TO DO] crontab -e ouvre un fichier temporaire pour modifier crontab -r supprime le fichier
sudo crontab

exit 0
