#!/bin/bash
trap '' 2
stty susp undef
clear
date=`date`
until [ "$p" == "x" ]; do
echo "1-Opcion 1"
echo "2-salir"
read a
case $a in


        1)
        clear
        read -p "tu nombre:" nombre
        echo $date
        echo $nombre;;

        2)
        quiensoy=`whoami`
        #pkill -KILL -u $quiensoy;;
        kill -HUP;;

esac
done;
