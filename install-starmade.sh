#!/bin/sh
set -e

mkdir -p /starmade
cd /starmade
wget -q http://files.star-made.org/StarMade-Starter.jar
chmod +x StarMade-Starter.jar
java -jar ./StarMade-Starter.jar -nogui
chmod ug+x StarMade-dedicated-server-linux.sh

for config in admins blacklist protected server-message whitelist; do
    ln -sf config/${config}.txt ${config}.txt
done

ln -sf config/server.cfg server.cfg
