#!/bin/bash
wget https://desktop.replit.com/download/deb

mv deb replit.deb

ar x replit.deb

zstd -d data.tar.zst

tar -xvf data.tar

cd usr/share/pixmaps/

cp replit.png ../../lib/replit/resources/

cd ../../
cd lib/replit/

chmod +x Replit

cd ../ 

# Copy replit electron code to /home direcortory
cp -r replit ~/

cd ../../

# Remove post install unnecessary files
echo "Removing unnecessary files"
rm -rf control.tar.zst data.tar data.tar.zst debian-binary replit.deb usr

# Create desktop icon
cd ~/.local/share/applications
touch replit.desktop
echo [Desktop Entry] > replit.desktop
echo Encoding=UTF-8 >> replit.dsktop
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