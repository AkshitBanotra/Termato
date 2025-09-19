#!/usr/bin/env bash

##########################################

trash="/dev/null"

##########################################

echo -e "Checking dependencies...\n"

if command -v pacman > ${trash};then

	if ! command -v figlet > ${trash};then
		sudo pacman -S figlet
	elif ! command -v lolcat > ${trash};then
		sudo pacman -S lolcat
	elif ! command -v notify-send > ${trash};then
		sudo pacman -S libnotify
	fi
elif command -v apt > ${trash};then
	if ! command -v figlet > ${trash};then
		sudo apt install figlet
	elif ! command -v lolcat > ${trash}; then
		sudo apt install ruby && sudo gem install lolcat
	elif ! command -v notify-send > ${trash};then
		sudo apt install libnotify-bin
	fi
elif command -v dnf > ${trash};then
	if ! command -v figlet > ${trash};then
		sudo dnf install figlet
	elif ! command -v lolcat > ${trash};then
		sudo dnf install ruby && sudo gem install lolcat
	elif ! command -v notify-send > ${trash};then
		sudo dnf install libnotify
	fi
fi

#########################################

sleep 0.5s

clear
mkdir -p "${HOME}"/.config/termato/

mv "${HOME}"/Termato/* "${HOME}"/.config/termato/

cd "${HOME}"

sleep 0.2s

echo "Setting up permissions..."

sleep 0.2s

chmod +x "${HOME}/.config/termato/termato" && chmod +x "${HOME}/.config/termato/animations"

sudo echo "alias termato=\"${HOME}/.config/termato/termato\"" >> "${HOME}/.bashrc"

source "${HOME}/.bashrc"

rm -rf "${HOME}/Termato/"

echo "Done!"

clear

