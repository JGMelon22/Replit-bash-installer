#!/bin/bash
cp -r replit ~/
cd ~/replit/
chmod +x Replit	

# Create desktop icon
cd ~/.local/share/applications
touch replit.desktop
echo [Desktop Entry] > replit.desktop
echo Encoding=UTF-8 >> replit.dsktop
echo Version=1.0.2 >> replit.desktop # Change version here on update
echo Name=Replit >> replit.desktop
echo Path=~/ >> replit.desktop
echo Exec=~/replit/Replit >> replit.desktop
echo Terminal=false >> replit.desktop
echo Type=Application >> replit.desktop
echo Categories=Development >> replit.desktop
echo Comment=Replit desktop app >> replit.desktop
echo Icon=~/replit/resources/replit.png >> replit.desktop

# Install conluded
echo "Installed successfully :)"
