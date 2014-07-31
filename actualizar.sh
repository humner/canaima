#!/bin/bash
fecha=$(date +"%m-%d-%Y-%T")
if (test -d /var/www/respaldo) then
echo "Ya existe la Carpeta"
else
mkdir /var/www/respaldo
fi

cp -R /home/usuario/control/ /var/www/respaldo/control$fecha
#/etc/init.d/apache2 restart
/etc/init.d/apache2 stop
/etc/init.d/apache2 start
