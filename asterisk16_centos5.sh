#!/bin/bash

clear
echo "Bienvenidos a mi primer script. Taught by mongrelion developed by Sebastonto"
echo "Vamos a instalar asterisk 1.6 para Centos 5.X"
echo "Presiona enter para empezar"
echo "Primero, una actualizacion suave con Yum"
read

yum -y update


echo "Instalando Vim para ver con colores y maricaditas los textos"
echo "Presiona enter"
read
clear

cd /
yum -y install vim-enhanced.i386

echo "Creando archivos necesarios para descargar asterisk 1.6"
echo "Presiona enter"
read
clear

echo "[asterisk-tested]
name=CentOS-\$releasever - Asterisk - Tested
baseurl=http://packages.asterisk.org/centos/\$releasever/tested/\$basearch/
enabled=0
gpgcheck=0
#gpgkey=http://packages.asterisk.org/RPM-GPG-KEY-Digium 

[asterisk-current]
name=CentOS-\$releasever - Asterisk - Current
baseurl=http://packages.asterisk.org/centos/\$releasever/current/\$basearch/
enabled=1
gpgcheck=0
#gpgkey=http://packages.asterisk.org/RPM-GPG-KEY-Digium" >/etc/yum.repos.d/centos-asterisk.repo


echo "[digium-tested]
name=CentOS-\$releasever - Digium - Tested
baseurl=http://packages.digium.com/centos/\$releasever/tested/\$basearch/
enabled=0
gpgcheck=0
#gpgkey=http://packages.digium.com/RPM-GPG-KEY-Digium

[digium-current]
name=CentOS-\$releasever - Digium - Current
baseurl=http://packages.digium.com/centos/\$releasever/current/\$basearch/
enabled=1
gpgcheck=0
#gpgkey=http://packages.digium.com/RPM-GPG-KEY-Digium" >/etc/yum.repos.d/centos-digium.repo

echo "Ahora si instalando Asterisk 1.6"
echo "Presiona enter"
read

yum -y install asterisk16 asterisk16-configs asterisk16-voicemail dahdi-linux dahdi-tools libpri gcc

echo "Instalando el Asterisk Core"
echo "Presiona enter"
read

yum -y install asterisk-core

echo "Arrancando asterisk"
echo "Presione enter"
read

service asterisk start

echo "Programando para que el Asterisk arranque automaticamente cuando se prenda el computador"
echo "Presione enter"
read

echo asterisk >> /etc/rc.local

