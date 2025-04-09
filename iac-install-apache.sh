#!/bin/bash

echo 'preparando servidor web (WWW)!'

echo 'iniciando atualização do servidor'

apt-get update

apt-get upgrade -y

echo 'fim da atualização'

echo 'iniciando instalação do apache2'

apt-get install apache2 -y

echo 'iniciando instalação do unzip'

apt-get install unzip -y

echo 'baixando arquivo do site no github'

cd /var/www/html/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'extraindo site'

unzip main.zip

echo 'removendo arquivo zip'
rm main.zip

echo 'movendo arquivos e excluindo diretório do arquivo git'

mv -f linux-site-dio-main/* .

rm -rf linux-site-dio-main

echo 'finalizado as configurações do servidor web'


