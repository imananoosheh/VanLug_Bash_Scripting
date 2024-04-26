#!/usr/bin/env bash

killall discord
wget 'https://discord.com/api/download?platform=linux&format=deb' -O /tmp/discord_latest.deb
sudo apt install /tmp/discord_latest.deb
rm /tmp/discord_latest.deb
