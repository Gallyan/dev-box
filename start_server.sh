#! /bin/sh

# Script exécuté au démarrage de la machine virtuelle ou physique
# Permet de lancer les serveurs qui ne sont pas lancés automatiquement

# On vérifie que la machine est installée
if [ -e /usr/local/bin/composer ]
then
   sudo service apache2 restart
else
   echo "Cette machine semble neuve. Pour l'installer:"
   echo "install_inside.sh"
   echo 'export PATH=$PATH:/vagrant' >> /home/vagrant/.bashrc
fi
