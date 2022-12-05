#!/bin/bash
echo "atualizando sistema.."

apt-get update
apt-get upgrade -y
apt-get install unzip -y

echo "Instalando apache..."

apt-get install apache2 -y

echo "Baixando arquivos do Site e ajustando nas devidas pastas"

cd /temp

wget https://github.com/RafaelFBitencourt/Estudo-HTML-CSS/archive/refs/heads/master.zip
unzip master.zip
cd Estudo-HTML-CSS-master
cp -R * /var/www/html/

