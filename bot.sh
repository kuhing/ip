#!/bin/bash
clear
RED='\033[0;31m'
NC='\033[0m'
BLUE="\033[36m"
GREEN='\033[0;32m'
grenbo="\e[92;1m"
PB=$(cat /etc/slowdns/server.pub)
NS=$(cat /etc/xray/dns)
SD=$(cat /etc/xray/domain)
BOTTTT=$(systemctl status botftvpn | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
if [[ $BOTTTT == "running" ]]; then
    STATBOT="${grenbo}🟢 Online${NC}"
else
    STATBOT="${RED}🔴 Offline${NC}"
fi
UUID=$(tr </dev/urandom -dc a-z | head -c8)
echo -e "   ┌──────────────────────────────────────────┐\033[0m"
echo -e "   │\033[0m\033[101m        BOT SIMPLE FTVPN TELEGRAM         \033[0m|\033[0m"
echo -e "   └──────────────────────────────────────────┘\033[0m"
echo -e "            Telegram Bot Setup menu"
echo -e "          make vpn in the telegram bot"
echo -e "──────────────────────────────────────────────────"
echo -e "            🤖 BOT STATUS $STATBOT    "
echo -e "──────────────────────────────────────────────────"
echo -e "   ${BLUE}get this value from @BotFather, required${NC}"
echo -e "    ${BLUE}take your id at @MissRose_bot,cmd (/id)${NC}"
echo -e "  ${BLUE}Tutorial? Join in the @fightertunnell group${NC}"
echo -e "        ==>> CTRL + C GO TO BACK <<=="
echo -e ""
read -e -p "Input your Bot Token : " TOKET
read -e -p "Input your Id Telegram : " IDTELE
rm -rf /etc/ftvpn/database.db
cat >/etc/ftvpn/var.txt <<EOF
BOT_TOKEN="$TOKET"
ADMIN="$IDTELE"
DOMAIN="${SD}"
PUB="${PB}"
HOST="${NS}"
SESSIONS="${UUID}"
EOF

systemctl daemon-reload
systemctl stop botftvpn
systemctl enable botftvpn
systemctl start botftvpn
systemctl restart botftvpn
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 8; i++)); do
            echo -ne "🚥"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
sssssss() {
     sleep 5
}
sssssssss() {
     sleep 5
}
ssssssssssss() {
     sleep 2
}
echo -e "   ┌──────────────────────────────────────────┐\033[0m"
echo -e "   │\033[0m\033[101m       🤖  FIGHTER TUNNEL BOT   🤖        \033[0m|\033[0m"
echo -e "   └──────────────────────────────────────────┘\033[0m"
echo -e ""
echo -e "Menyiapkan BOT Telegram"
fun_bar 'sssssss'
echo -e "Input Data API TOKEN "
fun_bar 'sssssssss'
echo -e "Input your ID  "
fun_bar 'ssssssssssss'
echo -e ""
echo -e ""
clear
BOTTSSSTT=$(systemctl status botftvpn | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
if [[ $BOTTSSSTT == "running" ]]; then
    BOTBOTTTTSUDADHTTT="${grenbo}🟢 Online${NC}"
else
    BOTBOTTTTSUDADHTTT="${RED}🔴 Offline${NC}"
fi
echo -e "──────────────────────────────────────────────────"
echo -e "         YOUR 🤖BOT STATUS $BOTBOTTTTSUDADHTTT    "
echo -e "──────────────────────────────────────────────────"
echo -e " BOT SUDAH BISA DI GUNAKAN, SILAHKAN KETIK "
echo -e "      (/menu Atau .menu) Di BOT KAMU"
echo -e "UNTUK MENGGANTI BOT SILAHKAN KETIK (bot) DI VPS"
echo -e ""
