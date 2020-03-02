source fonction.sh
while true
do 
menu 
echo "veuillez choisir la commande :"
read choix
case $choix in 
   "-l"|"1")
   	liste_wifi
      ;;
  

   "-lsort"|"2")
   liste_decr
	;;

   "-d"|"3")
	networkManager
	;;
    "-s" | "4")
	config_point_acces
	;;

       "-v"| "5")
         sauvegarder_essid
;;


   "-h"|"-help"|"6")
 	help_
	;;


 "-q"|"quitter"|"7")   
	exit_prog  
     ;;
esac
done
      
      
