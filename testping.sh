#!/bin/bash
clear
echo ╔═══╗░░░╔═╗░░░░░╔╗░╔═══╗░░░░░░░░░░░░╔═══╗░░╔╗░░░░░░
echo ║╔═╗║░░░║╔╝░░░░░║║░║╔═╗║░░░░░░░░░░░░║╔═╗║░░║║░░░░░░
echo ║╚═╝╠══╦╝╚╦══╦══╣║░║╚═╝╠══╦╗╔╦══╦═╗░║║░╚╬══╣╠╗╔╦══╗
echo ║╔╗╔╣╔╗╠╗╔╣╔╗║║═╣║░║╔╗╔╣╔╗║╚╝║╔╗║╔╗╗║║░╔╣╔╗║║╚╝║╔╗║
echo ║║║╚╣╔╗║║║║╔╗║║═╣╚╗║║║╚╣╚╝║║║║╔╗║║║║║╚═╝║╔╗║╚╗╔╣╚╝║
echo ╚╝╚═╩╝╚╝╚╝╚╝╚╩══╩═╝╚╝╚═╩══╩╩╩╩╝╚╩╝╚╝╚═══╩╝╚╩═╩╝╚══╝
##############################################################
echo vamos a crear el archivo con las lineas que forman el segmento de red
echo presiona enter para continuar...
read pause

for i in $(seq 1 254); do
	echo 192.168.1 >> ip_parte_a.txt
done
echo archivo creado...
echo presiona enter para continuar...
read pause
##############################################################
echo vamos a crear el archivo con las lineas que forman el segmento de host
echo presiona enter para continuar...
read pause

for i in $(seq 1 254); do
	echo $i >> ip_parte_b.txt
done
echo archivo creado...
echo presiona enter para continuar...
read pause
##############################################################
echo vamos a unir los dos archivos que hemos creado en uno creando una lista
echo de ips
echo presiona enter para continuar...

paste -d. ip_parte_a.txt ip_parte_b.txt > ip_lista.txt

##############################################################
echo vamos a realizar ping a cada uno de las ip del archivo que hemos creado

for i in $(cat ip_lista.txt); do
	ping -c 1 $i
	sleep 2
done

