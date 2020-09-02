#!/data/data/com.termux/files/usr/bin/bash
pkg install python -y
clear
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login



DIR="/data/data/com.termux/files/usr/etc/motd"
if [ -d "$DIR" ]; then
  ### Take action if $DIR doesnt exists ###
  rm /data/data/com.termux/files/usr/etc/motd
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo " "
fi


DIR1="/data/data/com.termux/files/usr/share/login/"
if [ -d "$DIR1" ]; then
	echo " "
else
  # Take action if $DIR exists. #
  mkdir /data/data/com.termux/files/usr/share/login/
fi

FILES=/data/data/com.termux/files/usr/bin/python
if [ -f $FILES ]
then
 echo
else
 echo
 echo "Re-run : bash HP-REMIX.sh "
 exit 0
fi

#TODO: hide input
echo " "
echo " "
echo -e "\e[32m-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+- \e[m "
echo " "
echo -e "\e[34m[*]\e[m \e[33mଅପେକ୍ଷା କରନ୍ତୁ  \e[m"
sleep 3
echo -e "\e[34m[*]\e[m \e[33mୟୁଜର ଇନପୁଟ ହଉଚି  \e[m"
sleep 3
echo -e "\e[34m[*]\e[m \e[33mପାସ୍ରେବୋର୍ଡ କରନ୍ତୁ  \e[m"
sleep 2
echo -e "\e[34m[*]\e[m \e[33mୟୁଜର ସଭେ କରନ୍ତୁ  \e[m"
echo " "
echo -e "\e[32m-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+- \e[m "
echo " "
sleep 2
clear
echo
echo
echo -e  "\e[32mପାସ୍ରେବୋର୍ଡ ବନାନ୍ତୁ : \e[m"
read passone
echo -e "\e[32mପାସ୍ରେବୋର୍ଡ ରିପିଟ କରନ୍ତୁ : \e[m "
read passtwo
sleep 3
echo " "
if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
echo -e "\e[31m[*]\e[32mଲଗିଂ ଭଲରେ ହେଇଗଲା  \e[m"
echo " "
elif [ $passone != $passtwo ];
then
	echo 'Match ହଉନି '
fi
