#!/bin/bash
clear
echo ╔═══╗░░░╔═╗░░░░░╔╗░╔═══╗░░░░░░░░░░░░╔═══╗░░╔╗░░░░░░
echo ║╔═╗║░░░║╔╝░░░░░║║░║╔═╗║░░░░░░░░░░░░║╔═╗║░░║║░░░░░░
echo ║╚═╝╠══╦╝╚╦══╦══╣║░║╚═╝╠══╦╗╔╦══╦═╗░║║░╚╬══╣╠╗╔╦══╗
echo ║╔╗╔╣╔╗╠╗╔╣╔╗║║═╣║░║╔╗╔╣╔╗║╚╝║╔╗║╔╗╗║║░╔╣╔╗║║╚╝║╔╗║
echo ║║║╚╣╔╗║║║║╔╗║║═╣╚╗║║║╚╣╚╝║║║║╔╗║║║║║╚═╝║╔╗║╚╗╔╣╚╝║
echo ╚╝╚═╩╝╚╝╚╝╚╝╚╩══╩═╝╚╝╚═╩══╩╩╩╩╝╚╩╝╚╝╚═══╩╝╚╩═╩╝╚══╝
##############################################################

while read line; do
	ping -c 1 "$line"
done < prueba.txt