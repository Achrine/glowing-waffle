#!/bin/bash

echo "Adding PPA to allow install of Synapse on Trusty"
sudo apt-add-repository ppa:synapse-core/testing
echo "Installing required packages..."
sudo apt-get install xmonad libghc-xmonad-dev libghc-xmonad-contrib-dev xmobar xcompmgr nitrogen stalonetray moreutils consolekit synapse ssh-askpass-gnome thunar terminator remmina

echo "Creating xmonad xsession configuration..."
sudo mv /usr/share/xsessions/xmonad.desktop /usr/share/xsessions/xmonad.desktop.original
sudo cp ~/.xmonad/xmonad.desktop /usr/share/xsessions
sudo cp ~/.xmonad/images/custom_xmonad_badge.png /usr/share/unity-greeter

echo "Linking to customized gnome 2 configuration..."
mv ~/.gtkrc-2.0 ~/gtkrc-2.0.original
ln -s .xmonad/.gtkrc-2.0 ~/.gtkrc-2.0

sudo apt-add-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme numix-icon-theme-circle


sudo sh -c "curl https://raw.githubusercontent.com/Foggalong/hardcode-fixer/master/fix.sh | bash"

curl https://raw.githubusercontent.com/ActusOS/GnomeYosemiteIcons/master/download_from_github.sh | sh
