#!/bin/bash
function on_click () {
while true
do

INPUT=`yad --no-buttons --title "Menu" --form --separator="" --width=400 --height=200 --text-align=left --text="Voila notre Menu \n 1) La commande -l \n 2) La commande -lsort \n 3) La commande -d \n 4) La commande -s \n 5) la commande -v \n 6) -h \ Help \n   7) Quitter " --entry --entry-label=Label --entry-text="Type here"`  \

case $INPUT in
 	1)

iwlist wlx00117f4bd32d scan 
#res=$(yad --list --title"resultat de recherche" --center --width=300 --height=300 --column "liste de wifi"); 
;;
	2)  nmcli dev wifi
;;
	3)  systemctl stop NetworkManager
               systemctl status NetworkManager

;;
	 4) iwlist scan | grep ESSID >>test.txt 
;;
	5)  ifconfig wlx00117f4bd32d  down
          iwconfig wlx00117f4bd32d mode monitor 
;;
	6) yad --list --tittle "Help Center" --text-align=center --text=" ******************************* \n Bienvenue dans le menu HELP :) \n ******************************* \n 1) -l: \n Permet de lister les differentes points d'accees la commande ' -lsort  ' \n permet de lister en ordre decroissant les points d'acces \n 2) -d :\n Permet de desactiver le networkmanager  \n 3) -s: \n Permet de configurer les points  d'acces \n 4) -v :\n Permet de sauvgarder les points d'acces dans un fichier text \n 6) -h ou help :\n Permet d'afficher le menu HELP \n 7) -q ou quitter :\n Permet de arreter le programme \n ******************************* \n Bienvenue dans le menu HELP :) \n ******************************* \n "
#(yad --list --title"resultat de recherche" --center --width=300 --height=300 --column "liste de wifi"); 
;;
	 
 
	7) exit

;;
esac

done
}
export -f on_click

function help () {
yad --title "Help Center" --text-align=center --text=" ******************************* \n \n Bienvenue dans le menu HELP :) \n ******************************* \n 1) -l: \n Permet de lister les differentes points d'accees  \n 2) -lsort : permet de lister en ordre decroissant les points d'acces \n 3) -d :\n Permet de desactiver le networkmanager  \n 4) -s: \n Permet de configurer les points  d'acces \n 5) -v :\n Permet de sauvgarder les points d'acces dans un fichier text \n 6) -h ou help :\n Permet d'afficher le menu HELP \n 7) -q ou quitter :\n Permet de arreter le programme \n ******************************* \n Bienvenue dans le menu HELP :) \n ******************************* \n "
}
export -f help

yad --title "Wifi" --form --separator="" --width=400 --height=200  --text-align=center --text="<span foreground='red'><b><big><big> Wifi </big></big></b></span> \n \n \n Notre application sert a manupiler tout ce qui concernt le wifi " \
--button=gtk-ok:"bash -c on_click" \
--button=gtk-help:"bash -c help" \
--button=gtk-quit:0 \


