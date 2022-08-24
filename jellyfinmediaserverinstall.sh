#!/bin/bash # Make sure you 'sudo chmod +x jellyinstall.sh' to adjust executable permissions on this script
#     _       _       _                   _     _____     _______ 
#  __| | ___ | | ___ | |__   __ _ _ __   | |   |_ _\ \   / / ____|
# / _` |/ _ \| |/ _ \| '_ \ / _` | '_ \  | |    | | \ \ / /|  _|  
#| (_| | (_) | | (_) | | | | (_| | | | |_| |___ | |  \ V / | |___ 
# \__,_|\___/|_|\___/|_| |_|\__,_|_| |_(_)_____|___|  \_/  |_____|
# This is pretty easy just fire away                                                                 
sudo apt update -y && sudo apt upgrade -y
sudo apt install apt-transport-https
wget -O - https://repo.jellyfin.org/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/jellyfin.li>
sudo apt update
sudo apt install jellyfin
sudo systemctl enable jellyfin
sudo systemctl start jellyfin
