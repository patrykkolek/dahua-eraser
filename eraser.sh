
echo "              Dahua Er@ser init script by Nudziarz 3:> "
echo -e "\e[1;31m wcisnij klawisz by zaczac \e[0m"
read Klawisz
#ustalanie parametrów
echo -e "\e[1;33m Podaj pierwszy adres IP (ex. 192.168.1.10)\e[0m" 
read IP
oct1=$(echo ${IP} | tr "." " " | awk '{ print $1 }')
oct2=$(echo ${IP} | tr "." " " | awk '{ print $2 }')
oct3=$(echo ${IP} | tr "." " " | awk '{ print $3 }')
oct4=$(echo ${IP} | tr "." " " | awk '{ print $4 }')
echo -e "\e[1;33m podaj koncowy adres IP (ex. 192.168.1.20) \e[0m" 
#echo -n "podaj koncowy adres IP (ex. 192.168.1.20) "
read IP2
oct6=$(echo ${IP2} | tr "." " " | awk '{ print $1 }')
oct7=$(echo ${IP2} | tr "." " " | awk '{ print $2 }')
oct8=$(echo ${IP2} | tr "." " " | awk '{ print $3 }')
oct5=$(echo ${IP2} | tr "." " " | awk '{ print $4 }')
echo -e "\e[1;33m Zakres adresów IP to : \e[1;32m $oct1.$oct2.$oct3.$oct4-$oct5 \e[0m" 
#echo "Zakres adresów IP to : $oct1.$oct2.$oct3.$oct4-$oct5 "
#petla od adresu poczatkwego do koncowego
  
 for ((i = $oct4; i <= $oct5; i++)); do
      ip=$oct1.$oct2.$oct3.$i
      echo -e "przywracam $ip"
      google-chrome   http://admin:1qwerty231@$ip/cgi-bin/magicBox.cgi?action=resetSystemEx&type=0
  done

echo "Zakonczono przywracanie ustawien"

