#!/bin/sh

mkdir /starmade
wget -q http://files.star-made.org/StarMade-Starter.jar
java -jar ./Starmade-Starter.jar -nogui
cd /starmade
chmod ug+x StarMade-dedicated-server-linux.sh

for config in admins blacklist protected server-message whitelist; do
    ln -sf config/${config}.txt ${config}.txt
done

ln -sf config/server.cfg server.cfg
