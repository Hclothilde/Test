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
#[TO DO] crontab -e oure un fichier temporaire pour modifier crontab -r supprime le fichier
(sudo crontab -l; echo "@reboot sudo bash /home/$nom_raspberry/lancement_kosmos.sh > /home/$nom_raspberry/logfile_kosmos/log.txt 2>&1";) | uniq - | sudo crontab
sudo crontab -l

exit 0
