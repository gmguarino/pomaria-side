#!/bin/bash
#################

echo
echo "#########################################"
echo "#########################################"
echo INSTALLING POMARIA CONKY DESKTOP
echo "#########################################"
echo "#########################################"
echo

echo "INSTALL CONKY"
echo

if [ "$(dpkg -l | awk '/conky/ {print }'|wc -l)" -ge 1 ]; then
  echo "conky is already installed"
  echo
  #sudo apt install --upgrade conky-all 
else
  sudo apt install conky-all
  echo
fi

echo "#########################################"
echo

POMARIA_DIR=/usr/local/share/lua/5.1/pomaria-side/

if [ ! -d "$POMARIA_DIR" ]; then
	echo "Making directory $POMARIA_DIR"
	sudo mkdir -p $(POMARIA_DIR)
else
	echo "$POMARIA_DIR already exists"
fi
echo
echo "#########################################"
echo

if [ ! -f "$POMARIA_DIR/abstract.lua" ]; then
	sudo cp ./abstract.lua $POMARIA_DIR/abstract.lua 
	echo "copied abstract.lua"
else
	echo "abstract.lua already in directory"
fi
echo
echo "#########################################"
echo
if [ ! -f "$POMARIA_DIR/settings.lua" ]; then
	sudo cp ./settings.lua $POMARIA_DIR/settings.lua 
	echo "copied settings.lua"
else
	echo "settings.lua already in directory"
fi
echo "#########################################"
echo
echo "Setup autostart"
echo

if [ ! -f "$HOME/.config/autostart/Conky.desktop" ]; then
	echo "Creating desktop entry"
	"""[Desktop Entry]
	Type=Application
	Exec=conky -p 15 -q -c $HOME/.conky/pomaria-side/conkyrc
	X-GNOME-Autostart-enabled=true
	NoDisplay=false
	Hidden=false
	Name[it]=Conky
	Comment[it]=Nessuna descrizione
	X-GNOME-Autostart-Delay=0""" >> .config/autostart/Conky.desktop 

else
	echo "Autostart entry found:"
	echo 	"""
[Desktop Entry]
Type=Application
Exec=conky -p 15 -q -c $HOME/.conky/pomaria-side/conkyrc
X-GNOME-Autostart-enabled=true
NoDisplay=false
Hidden=false
Name[it]=Conky
Comment[it]=Nessuna descrizione
X-GNOME-Autostart-Delay=0""" 
fi
echo "#########################################"


