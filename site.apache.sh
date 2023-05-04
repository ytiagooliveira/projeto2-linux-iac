#!/bin/bash

echo "Atualizar o servidor"

apt-get update
apt-get upgrade -y

echo "Instalar Apache2"

apt-get install apache2 -y

echo "Instalar Unzip"

apt-get install unzip -y

echo "Baixar a aplicação para o diretório /tmp"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

echo "Copiar arquivos baixados para o diretório padrão do apachr"

cp -R * /var/www/html

echo "Subir arquivo para GitHub"


