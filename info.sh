clear
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[1;31m'
blue='\e[1;34m'
white='\e[1;35m'
yellow='\e[1;33m'
echo -e $blue "ESTE SCRIPT ESTA ECHO";
echo -e $blue "CON CARIÑO MIENTRAS ";
echo -e $blue "HACIA ESTE CODIGO    ";
echo -e $blue "LLORABA POR AMOR    ";
echo -e $blue "ENCERRADO EN MI HABITACION";
echo -e $red " PROGRAMADO By:$cyan B4rc0d37"
echo -e $red "      TELEGRAM:$cyan B4rc0d37"
echo
echo
echo -e $cyan"$red 1$cyan $yellow Mi IP"
echo
echo -e $cyan"$red 2$cyan $yellow Informacion IP y Sitio"
echo
echo -e $cyan"$red 3$cyan $yellow Buscador de DNS del Host"
echo
echo -e $cyan"$red 4$cyan $yellow Escanear Puertos"
echo
echo -e $cyan"$red 5$cyan $yellow Buscador del Host"
echo
echo -e $cyan"$red 6$cyan $yellow Info del Dominio"
echo
echo -e $cyan"$red 7$cyan $yellow Extraer Enlaces"
echo
echo -e $cyan"$red 0$cyan $yellow Salir"
echo
echo
read -p "Introduzca Numero: " ipp
if [ $ipp = 1 ]
then
echo -e $cyan
ip=$(curl -s https://api.ipify.org)
echo "Mi IP publica es: $ip"
echo
echo -e $blue
read -p "Presione ENTER para volver atras" enter
bash info.sh
fi
if [ $ipp = 2 ]
then
echo
read -p "Introduzca Sitio o IP: " ip
curl http://ip-api.com/$ip
echo
echo -e $blue
read -p "Presione ENTER para volver atras" enter
bash info.sh
fi
if [ $ipp = 3 ]
then
echo
read -p "Introduzca el sitio: " site
curl https://api.hackertarget.com/mtr/?q=$site
echo
echo -e $blue
read -p "Presione ENTER para volver atras" enter
bash info.sh
fi
if [ $ipp = 4 ]
then
echo
read -p "Escanear puertos: " port
curl http://api.hackertarget.com/nmap/?q=$port
echo
echo -e $blue
read -p "Presione ENTER para volver atras" enter
bash info.sh
fi

if [ $ipp = 5 ]
then
echo
read -p "Introduzca el sitio: " s
s=$(curl -s http://api.hackertarget.com/hostsearch/?q=$s)
echo "The host is: $s"
echo
echo -e $blue
read -p "Presione ENTER para volver atras" enter
bash info.sh
fi
if [ $ipp = 6 ]
then
echo
read -p 'Introduzca el dominio: ' mail
curl -H "Accept: application/json" \
https://check-host.net/check-tcp?host=smtp://$mail&max_nodes=1
echo
echo -e $blue
echo
echo
read -p "Presione ENTER para volver atras" enter
bash info.sh
fi
if [ $ipp = 7 ]
then
echo
read -p "Introduzca el dominio: " df
echo -e $red
curl https://api.hackertarget.com/pagelinks/?q=$df
echo
echo -e $blue
read -p "Presione ENTER para volver atras" enter
bash info.sh
fi
if [ $ipp = 0 ]
then
clear
echo
echo
echo
echo
echo
echo -e $green "             TELEGRAM:$red B4rcod37"
echo -e $green "  $red Al Final termine con el corazon partido "
echo -e $green "             $red Dolor Y Sufrimiento"
echo
echo
echo
echo
exit
else
bash info.sh
fi

