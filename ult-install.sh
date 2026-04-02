#!/bin/bash
ban() {

clear

echo -e "\033[1;95m"
echo "╔══════════════════════════════╗"
echo "║        ROOTED CYBER          ║"
echo "╚══════════════════════════════╝"
echo -e "\033[0m"

sleep 0.2

echo -e "\033[1;96m   ▸ Termux Control Panel"
echo -e "   ▸ Ultroid Manager"
echo -e "   ▸ Session Generator\033[0m"

echo
}
# banner (simple)
ban() {
echo -e "\033[1;95m==== MENU ====\033[0m"
}

# check ultroid install
chu() {
cd ~ || return
if [ -d "Ultroid" ]; then
  echo -e "\033[1;96m[\033[1;93m Installed ✔\033[1;96m]"
else
  echo -e "\033[1;96m[\033[1;91m Not installed ✘\033[1;96m]"
fi
}

# run / install ultroid
chum() {
cd ~ || return
if [ -d "Ultroid" ]; then
  cd ~/Ultroid || return
  bash startup
else
  bash ~/Te*d/ult.sh
fi
}

menu() {
ban

lb="$(chu)"

printf "\033[1;91m [1]\033[1;92m Termux ultroid %s\n" "$lb"
printf "\033[1;91m [2]\033[1;92m string session gen.\n"
printf "\033[1;91m [3]\033[1;92m create .env\n"

echo -ne "\n\033[1;96mChoose option: \033[0m"
read -r a

case "$a" in
  1) chum ;;
  2) ssn ;;
  3) en ;;
  *) echo "✘ Invalid option" ;;
esac
}

# msg check
if command -v msg >/dev/null 2>&1; then
  menu
else
  echo -ne "Setup msg? (y/n): "
  read -r l
  case "$l" in
    y|Y)
      bash -c "$(curl -fsSL https://gist.githubusercontent.com/rooted-cyber/ce6248bd681844d35a12bd210989eb89/raw/install)"
      ;;
    *)
      echo "✘ msg not installed"
      ;;
  esac
fi