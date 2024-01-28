#!/bin/bash

if [ "$1" == "" ]
then
echo "Escriba los primeros tres octetos de la red."
echo "Ejemplo de uso: ./barrido_ips.sh 192.168.1"
else
for ip in `seq 1 254`;
do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f4 | tr -d ":" &
done
fi 
