#! /bin/bash

BLK='\e[30m'; blk='\e[90m'; BBLK='\e[40m'; bblk='\e[100m' #| Black   |
RED='\e[31m'; red='\e[91m'; BRED='\e[41m'; bred='\e[101m' #| Red     |
GRN='\e[32m'; grn='\e[92m'; BGRN='\e[42m'; bgrn='\e[102m' #| Green   |
YLW='\e[33m'; ylw='\e[93m'; BYLW='\e[43m'; bylw='\e[103m' #| Yellow  |
BLU='\e[34m'; blu='\e[94m'; BBLU='\e[44m'; bblu='\e[104m' #| Blue    |
MGN='\e[35m'; mgn='\e[95m'; BMGN='\e[45m'; bmgn='\e[105m' #| Magenta |
CYN='\e[36m'; cyn='\e[96m'; BCYN='\e[46m'; bcyn='\e[106m' #| Cyan    |
WHT='\e[37m'; wht='\e[97m'; BWHT='\e[47m'; bwht='\e[107m' #| White   |


figlet="$(which figlet)"
if [ "$figlet" != "/usr/bin/figlet" ];
then
    sudo apt install figlet -y
    clear
    git clone https://github.com/xero/figlet-fonts.git
    cd figlet-fonts/
    rm README.md
    clear
    sudo mv * /usr/share/figlet/
fi


echo -e "\n"
toilet -f mono9 -F border Converter!
echo -e "\n"
printf "$CYN"
figlet -f term '  solution to units and mesurements on single terminal'
printf "$YLW"
figlet -f Cyberlarge "__________"




length() {

listing_len_conversion="1 Kilometer to meter           3 Centimeter to inch          
2 Centimeter to meter          4 Kilometer to mile "

printf "$GRN"
echo -e "\n\n$listing_len_conversion\n\n"
printf "$YLW"
echo "[*] Select the desired conversion type :-\n"

read len_con_type


    km_to_m() {
        printf "$YLW"
        echo -e "\n[*] Enter the number in kilometer"
        read km 
        meter=$((km * 1000))
        printf "$CYN"
        echo -e "\n\n"
        kmtom_result="$km kilometer is equals to $meter meters"
        figlet  -f wideterm $kmtom_result
        echo -e "\n"
    }
    cm_to_m() {
        echo -e "\n Enter the number in centimeter:"
        read cm 
        mul=0.01
        meterbycm=$((cm*0.001))
        printf "$CYN"
        cmtom_result="$cm Centimeter is equals to $meterbycm meters"
        echo -e "\n\n"
        figlet -f wideterm $cmtom_result
    }
    cm_to_inch() {
        printf "$YLW"
        echo -e "\n[*] Enter the number in centimeter:-"
        read cmforinch 
        inchforcm=$((cmforinch / 2.4 )) | bc
        printf "$CYN"
        echo -e "\n\n"
        cmtoinchresult="$cmforinch centimeter is equals to $inchforcm inch"
        figlet  -f wideterm $cmtoinchresult
        echo -e "\n"
    }
    km_to_mile() {
        printf "$YLW"
        echo -e "\n[*] Enter the number in kilometer"
        read kmformile 
        mile=$((kmformile * 0.6214))
        printf "$CYN"
        echo -e "\n\n"
        kmtomile_result="$kmformile kilometer is equals to $mile miles"
        figlet  -f wideterm $kmtomile_result
        echo -e "\n"
    }









case $len_con_type in
1) km_to_m ;;
2) cm_to_m ;;
3) cm_to_inch ;;
4) km_to_mile ;;
*) echo "Please choose the right one from the given list!!"
esac

}

mass() {
    echo "running mass function"
}

volume() {
    echo "running vol function"
}

temparature() {
    echo "running temp function"
}




listing_con_methods="1 Length                       3 Mass                        
2 Volume                       4 Temparature                 
"
printf "$GRN"
echo -e "\n $listing_con_methods\n\n"
printf "$YLW"
echo -e "[*] Select the desired conversion method :-"
read x

case $x in
1) length ;;
2) volume ;;
3) mass ;;
4) temparature ;;
esac






