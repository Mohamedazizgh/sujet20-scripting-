

function menu ()
{

echo "-------------------------"
echo "     Software Info       "
echo "-------------------------"  
echo "1) lister les differentes points d'accés wifi via l'option -l"
echo " 2) lister les points d'accés wifi par ordre décrsoissant d'intensité de signal via l'option -lsort"
echo " 3) desactiver le service NetworkManager via l'option -d"
echo "4)configurer manuellement les points d'acces -s"
echo "5) sauvegarder les noms points d'acces wifi dans un fichier -v"
echo "6) -h ou -help"
echo "7) quiter"
echo ""
}


function liste_wifi()
{
 echo "******"

      iwlist wlx8882790b7443 scanning
      echo "******"

}
function sauvegarder_essid()
{
 echo "******"
 iwlist scan | grep ESSID >>test.txt 
 echo "******"
}
function liste_decr()
{
  echo "******"
        nmcli dev wifi
       echo "******"

}

function networkManager()
{
	     echo "******"
	     systemctl stop NetworkManager
               systemctl status NetworkManager

	     echo "******"

}
function config_point_acces()
{
         echo "******"
          ifconfig wlx8882790b7443  down
          iwconfig wlx8882790b7443 mode monitor 
           iwconfig  
           echo "******" 
}
function help_()
{
   echo "******"
   echo "-l:info sur les differentes points d'accés wifi"
   echo "-lsort: info sur les points d'acces wifi par order décroissant d'intensité de signal "
   echo "-d:desactiver le service networkmanager"
echo "-v : sauvegarder les noms points d'acces wifi dans un fichier"
   echo "******"

}
function exit_prog()
{
echo "******"
             echo GoodBye
             echo "******"    
             exit
}




