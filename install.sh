#!/bin/bash/
clear
echo "█▀▀ █▀ █▀█ ▄▀█ █▀█ ▀█▀ ▄▀█ █▄░█ "
echo "██▄ ▄█ █▀▀ █▀█ █▀▄ ░█░ █▀█ █░▀█ "

echo "TRADUCTOR DE INGLES A ESPAÑOL "
echo        "DE ESPAÑOL A INGLES"
r='<?php

for ($time=0;$time<101;$time++)    {
            usleep(100000);
echo "\033[32;3mloading \033[0m(\033[1;31m".$time."%\033[0m)\r";
}

function runing(){         

	$shell = 100;                    
	$iloop = "0"; /* Outside the loop */         

	for( $i= 0 ; $i < $shell ; $i++ ){
		$c = rand(34, 36);

		$warn = "Scritps Runing wait please....!!\r";        		
	if (strlen($warn) === $iloop+1){  		
		$iloop = "1";           

	}                               
	$warn = str_split($warn);                     
	$iloop++;

	$warn[$iloop] = "\033[$c;1m\e[0m".strtoupper($warn[$iloop]);

	echo " \033[$c;3m".implode($warn);

	usleep(100000);}
	system("clear");
}

runing();'

touch ru.php

echo $r >> ru.php

php ru.php
rm ru.php


greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"



mv es.php $HOME
cd $HOME
mv es.php .es.php
cd - > /dev/null
mv en.php $HOME
cd $HOME
mv en.php .en.php
cd - > /dev/null
sleep 2

FICHERO= cd /data/data/com.termux/files/usr/etc/fish
FICHEROO= cd /data/data/com.termux/files/usr/etc
escribir="alias es='php /data/data/com.termux/files/home/.es.php'"
escribe="alias en='php /data/data/com.termux/files/home/.en.php'"

if [ -f $FICHERO ]
then
   #echo "El fichero $FICHERO existe"
   cd /data/data/com.termux/files/usr/etc/fish/

   echo $escribir >> /data/data/com.termux/files/usr/etc/fish/config.fish
   echo $escribe >> /data/data/com.termux/files/usr/etc/fish/config.fish
   cd - > /dev/null
   echo -e "${redColour}Reinicie su terminal Termux${endColour}\n"
   sleep 1
   echo -e "${yellowColour}Para ejecutar el traductor escriba en su terminal desde cualquier directorio, ejemplo:${endColour}
    ${blueColour}De ingles a español ----> ${greenColour}es${endColour}
    ${blueColour}De español a ingles ----> ${greenColour}en${endColour}"
   exit

else
   #echo "El fichero $FICHERO no existe"

   if [ -f $FICHEROO ]
   then
	   #echo "El fichero $FICHEROO existe"
	   echo $escribir >> /data/data/com.termux/files/usr/etc/bash.bashrc
	   echo $escribe >> /data/data/com.termux/files/usr/etc/bash.bashrc
	   cd - > /dev/null
	   echo -e "${redColour}Reinicie su terminal Termux${endColour}\n"
	   echo -e "${redColour}Para ejecutar el traductor escriba en su terminal desde cualquier directorio, ejemplo:${endColour}
	   ${blueColour}De ingles a español ---->${greenColour} es${endColour}
	   ${blueColour}De español a ingles ---->${greenColour} en${endColour}"
   	#statements
   fi
fi
