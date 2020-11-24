#!/bin/bash
clear
echo "---------------------------------------------"
echo "------------Elige una opcion-----------------"
echo "---------------------------------------------"
echo "1 -Busqueda y validacion *.conf de directorio"
echo "2 -Busqueda y validacion *.txt de directorio"
echo "3 -Busqueda y validacion *.mp3 de directorio"
echo "---------------------------------------------"
echo "---------------------------------------------"
read word
case $word in
 	1)
	while [[ true ]]; do
	clear
	echo "------Busqueda y copia de archivos *.conf -----"
	echo "introduce directorio donde realizar la Busqueda"
	read p
	if [[ -e $p ]]; then
		echo "---------------------------------------------" >> /home/rafa/log/log_conf.log
		date +%c >> /home/rafa/log/log_conf.log
		find $p -type f -iname '*.conf' -exec cp -v {} /home/rafa/temp \; >> /home/rafa/log/log_conf.log
		echo "---------------------------------------------"
		echo "la busqueda y la copia se ha realizado correctamente"
		echo "pulse ENTER para salir"
		read salir
		exit
	else
		echo "---------------------------------------------"
		echo "el directorio introducido no es valido o no existe"
		echo "pulse ENTER para continuar"
		read pause
	fi;
	done;;

	2)
	while [[ true ]]; do
	clear
	echo "---Busqueda y compresion de archivos *.txt-----"
	echo "introduce directorio donde realizar la Busqueda"
	read p
	if [[ -e $p ]]; then
		#3 horas para encontrar y que funcione este comando find  y usar  +;   
		find $p -type f -iname '*.txt' -exec tar -czvf /home/rafa/temp/texto_tar.gz {} +;
		echo "---------------------------------------------"
		echo "la busqueda y compresion se ha realizado correctamente"
		echo "pulse ENTER para salir"
		read salir
		exit
	else
		echo "---------------------------------------------"
		echo "el directorio introducido no es valido o no existe"
		echo "pulse ENTER para continuar"
		read pause
	fi
	done;;

	3)
	while [[ true ]]; do
	clear
	echo "---Busqueda y borrado de archivos *.mp3-----"
	echo "introduce directorio donde realizar la Busqueda"
	read p
	if [[ -e $p ]]; then
		echo "---------------------------------------------" >> /home/rafa/log/log_borrados.log
		date +%c >> /home/rafa/log/log_borrados.log
		find $p -type f -iname '*.mp3' -exec rm -v {} \; >> /home/rafa/log/log_borrados.log
		echo "---------------------------------------------"
		echo "la busqueda y el borrado se ha realizado correctamente"
		echo "pulse ENTER para salir"
		read salir
		exit
	else
		echo "---------------------------------------------"
		echo "el directorio introducido no es valido o no existe"
		echo "pulse ENTER para continuar"
		read pause
	fi
	done;;
esac