#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y

echo "Baixando e copiando os arquivos da aplicação..."


apt-get install unzip -y
cd /tmp
wget https://pt-br.libreoffice.org/baixe-ja/libreoffice-novo/?type=deb-x86_64&version=24.8.2&lang=pt-BR
cd /linux-site-dio-main
cp -R * /var/www/html
