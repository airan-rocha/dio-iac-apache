#!/bin/bash

echo 'removendo apache'

apt-get purge apache2 -y

echo 'removendo unzip'

apt-get purge unzip -y

echo 'removendo pacotes não usados'

apt-get autoremove -y

echo 'removendo diretório do site'

rm -rf /var/www

echo 'reinicie o sistema operacional para finalizar as operações'
