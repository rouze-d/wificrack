#!/bin/bash
# wifi handshake crack
# by- rouze_d. yes, i'am ScriptKiddies

YELLOW=$(tput setaf 3)
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
STAND=$(tput sgr 0)
BOLD=$(tput bold)

#clear
#if [[ $EUID -ne 1000 ]]; then
#    echo "$BOLD$RED this test for Parrot OS, so this script not work if you 'root'"
#    echo " don't use 'sudo' before command $STAND"
#    exit 1
#fi

clear
echo "
  ┓ ┳  o  ┳━┓  o  ┏━┓  ┳━┓  ┳━┓  ┏━┓  ┳┏ 
  ┃┃┃  ┃  ┣━   ┃  ┃    ┃┳┛  ┃━┫  ┃    ┣┻┓
  ┗┻┇  ┇  ┇    ┇  ┗━┛  ┇┗┛  ┛ ┇  ┗━┛  ┇ ┛" | lolcat -p 0.5
echo "                              by-$BOLD rouze_d$STAND"
echo "$BLUE easy crack handshake file  WiFi password"
echo ""
echo "$BLUE$BOLD Method To Crack$STAND"
echo "$RED$BOLD 1$STAND =$GREEN$BOLD Wordlists File$STAND"
echo "$RED$BOLD 2$STAND =$GREEN$BOLD BurteForce On Crunch (No Wordlists)$STAND"
echo ""
echo -e "$BLUE$BOLD Input You Method Choice\n :$RED \c"
read CRACK
echo "$STAND"


if [ "$CRACK" = "1" ]; then
    #clear
    echo ""
    echo -e "$BLUE$BOLD Input Path Your Password Wordlist. Ex : /root/rockyou.txt\n :$GREEN$BOLD \c"
    read FILE
    echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
    read SHAKE
    echo "$STAND"
    gnome-terminal --window --geometry=130x30 -x sh -c "sudo aircrack-ng $SHAKE -w $FILE ;echo 'click enter to exit';read exit"
    echo ""
    echo -e "Back To Menu? (Y/N)\n :\c "
    read MENU
    if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
        bash $0
    fi
    if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
        clear
        echo ""
        echo " BYE~BYE~"
        echo " HOPE YOU HAVE NICE & LUCKY DAY"
        echo ""
        exit
fi
fi
if [ "$CRACK" = "2" ]; then
    #clear
    # @ will insert lower case characters
    # , will insert upper case characters
    # % will insert numbers
    # ^ will insert symbols
    echo ""
    echo "$BOLD$RED BurteForce On Crunch$STAND"
    echo "$BOLD$BLUE Method To Crack$STAND"
    echo ""
    echo "$RED$BOLD 1$STAND =$GREEN$BOLD Number                         [ 0123...9 ]"
    echo "$RED$BOLD 2$STAND =$GREEN$BOLD Low Char                       [ abcd...z ]"
    echo "$RED$BOLD 3$STAND =$GREEN$BOLD Upper Char                     [ ABCD...Z ]"
    echo "$RED$BOLD 4$STAND =$GREEN$BOLD Number + Low Char              [ 0123...9 ] + [ abcd...z ]"
    echo "$RED$BOLD 5$STAND =$GREEN$BOLD Number + Upper Char            [ 0123...9 ] + [ ABCD...Z ]"
    echo "$RED$BOLD 6$STAND =$GREEN$BOLD Low Char + Upper Char          [ abcd...z ] + [ ABCD...Z ]"
    echo "$RED$BOLD 7$STAND =$GREEN$BOLD Number + Low Char + Upper Char [ 0123...9 ] + [ abcd...z ] + [ ABCD...Z ]"
    echo ""
    echo -e "$BLUE$BOLD Input your Method Choice \n :$RED \c"
    read CRUNCH
    if [ "$CRUNCH" = "1" ]; then
        clear
        echo ""
        echo " BurteForce Number [ 0123...9 ]"
        echo -e "$BLUE$BLOD MIN Characters [8-32] :$GREEN \c"
        read MIN
        echo -e "$BLUE$BLOD MAX Characters [8-32] :$GREEN \c"
        read MAX
        echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
        read SHAKE
        echo "$STAND"
        gnome-terminal --window --geometry=130x30 -x sh -c "sudo crunch $MIN $MAX -f /usr/share/crunch/charset.lst numeric -u | aircrack-ng -w- $SHAKE;echo 'click enter to exit';read exit"
        echo ""
        echo -e "Back To Menu? (Y/N)\n :\c "
        read MENU
        if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
            bash $0
        fi
        if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
            clear
            echo ""
            echo " BYE~BYE~"
            echo " HOPE YOU HAVE NICE & LUCKY DAY"
            echo ""
            exit
        fi
    fi
    if [ "$CRUNCH" = "2" ]; then
        clear
        echo ""
        echo " BurteForce Low Char [ abcd...z ]"
        echo -e "$BLUE$BLOD MIN Characters [8-32] :$GREEN \c"
        read MIN
        echo -e "$BLUE$BLOD MAX Characters [8-32] :$GREEN \c"
        read MAX
        echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
        read SHAKE
        echo "$STAND"
        gnome-terminal --window --geometry=130x30 -x sh -c "sudo crunch $MIN $MAX -f /usr/share/crunch/charset.lst lalpha -u | aircrack-ng -w- $SHAKE;echo 'click enter to exit';read exit"
        echo ""
        echo -e "Back To Menu? (Y/N)\n :\c "
        read MENU
        if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
                bash $0
        fi
        if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
            clear
            echo ""
            echo " BYE~BYE~"
            echo " HOPE YOU HAVE NICE & LUCKY DAY"
            echo ""
            exit
        fi
    fi
    if [ "$CRUNCH" = "3" ]; then
        clear
        echo ""
        echo " BurteForce Upper Char [ ABCD...Z ]"
        echo -e "$BLUE$BLOD MIN Characters [8-32] :$GREEN \c"
        read MIN
        echo -e "$BLUE$BLOD MAX Characters [8-32] :$GREEN \c"
        read MAX
        echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
        read SHAKE
        echo "$STAND"
        gnome-terminal --window --geometry=130x30 -x sh -c "sudo crunch $MIN $MAX -f /usr/share/crunch/charset.lst ualpha -u | aircrack-ng -w- $SHAKE;echo 'click enter to exit';read exit"
        echo ""
        echo -e "Back To Menu? (Y/N)\n :\c "
        read MENU
        if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
                bash $0
        fi
        if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
            clear
            echo ""
            echo " BYE~BYE~"
            echo " HOPE YOU HAVE NICE & LUCKY DAY"
            echo ""
            exit
        fi
    fi
    if [ "$CRUNCH" = "4" ]; then
        clear
        echo ""
        echo " BurteForce Number + Low Char [ 0123...9 ] + [ abcd...z ]"
        echo -e "$BLUE$BLOD MIN Characters [8-32] :$GREEN \c"
        read MIN
        echo -e "$BLUE$BLOD MAX Characters [8-32] :$GREEN \c"
        read MAX
        echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
        read SHAKE
        echo "$STAND"
        gnome-terminal --window --geometry=130x30 -x sh -c "sudo crunch $MIN $MAX -f /usr/share/crunch/charset.lst lalpha-numeric -u | aircrack-ng -w- $SHAKE;echo 'click enter to exit';read exit"
        echo ""
        echo -e "Back To Menu? (Y/N)\n :\c "
        read MENU
        if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
            bash $0
        fi
        if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
            clear
            echo ""
            echo " BYE~BYE~"
            echo " HOPE YOU HAVE NICE & LUCKY DAY"
            echo ""
            exit
        fi
    fi
    if [ "$CRUNCH" = "5" ]; then
        clear
        echo ""
        echo " BurteForce Number + Upper Char [ 0123...9 ] + [ ABCD...Z ]"
        echo -e "$BLUE$BLOD MIN Characters [8-32] :$GREEN \c"
        read MIN
        echo -e "$BLUE$BLOD MAX Characters [8-32] :$GREEN \c"
        read MAX
        echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
        read SHAKE
        echo "$STAND"
        gnome-terminal --window --geometry=130x30 -x sh -c "sudo crunch $MIN $MAX -f /usr/share/crunch/charset.lst ualpha-numeric -u | aircrack-ng -w- $SHAKE;echo 'click enter to exit';read exit"
        echo ""
        echo -e "Back To Menu? (Y/N)\n :\c "
        read MENU
        if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
            bash $0
        fi
        if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
            clear
            echo ""
            echo " BYE~BYE~"
            echo " HOPE YOU HAVE NICE & LUCKY DAY"
            echo ""
            exit
        fi
    fi
    if [ "$CRUNCH" = "6" ]; then
        clear
        echo ""
        echo " BurteForce Low Char + Upper Char [ abcd...z ] + [ ABCD...Z ]"
        echo -e "$BLUE$BLOD MIN Characters [8-32] :$GREEN \c"
        read MIN
        echo -e "$BLUE$BLOD MAX Characters [8-32] :$GREEN \c"
        read MAX
        echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
        read SHAKE
        echo "$STAND"
        gnome-terminal --window --geometry=130x30 -x sh -c "sudo crunch $MIN $MAX -f /usr/share/crunch/charset.lst mixalpha -u | aircrack-ng -w- $SHAKE;echo 'click enter to exit';read exit"
        echo ""
        echo -e "Back To Menu? (Y/N)\n :\c "
        read MENU
        if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
            bash $0
        fi
        if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
            clear
            echo ""
            echo " BYE~BYE~"
            echo " HOPE YOU HAVE NICE & LUCKY DAY"
            echo ""
            exit
        fi
    fi
    if [ "$CRUNCH" = "7" ]; then
        clear
        echo ""
        echo " BurteForce Number + Low Char + Upper Char [ 0123...9 ] + [ abcd...z ] + [ ABCD...Z ]"
        echo -e "$BLUE$BLOD MIN Characters [8-32] :$GREEN \c"
        read MIN
        echo -e "$BLUE$BLOD MAX Characters [8-32] :$GREEN \c"
        read MAX
        echo -e "$BLUE$BOLD Input Path file IVS/WPA HandShake. Ex : /root/handshake.ivs|handshake.cap\n :$GREEN$BOLD \c"
        read SHAKE
        echo "$STAND"
        gnome-terminal --window --geometry=130x30 -x sh -c "sudo crunch $MIN $MAX -f /usr/share/crunch/charset.lst mixalpha-numeric -u | aircrack-ng -w- $SHAKE;echo 'click enter to exit';read exit"
        echo ""
        echo -e "Back To Menu? (Y/N)\n :\c "
        read MENU
        if [ "$MENU" = "Y" ] || [ "$MENU" = "y" ]; then
            bash $0
        fi
        if [ "$MENU" = "N" ] || [ "$MENU" = "n" ]; then
            clear
            echo ""
            echo " BYE~BYE~"
            echo " HOPE YOU HAVE NICE & LUCKY DAY"
            echo ""
            exit
        fi
    fi
fi
if [ "$METHOD" != 0 ];then
    clear
    echo ""
    echo "$RED$BOLD Invalid Entry...$STAND"
    sleep 1
    bash $0
fi
echo "GOOD BYE"
