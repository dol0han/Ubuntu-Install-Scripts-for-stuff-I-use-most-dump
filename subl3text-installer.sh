# Thankyou for using scripts by me: Nathan Vanhorn aka dolohan 
# Come and visit me at:
#            _        _                       _      _  _        ___ 
#   |       | |      | |                   \_|_)    | |(_|   |_// (_)
# __|   __  | |  __  | |     __,   _  _      |      | |  |   |  \__  
#/  |  /  \_|/  /  \_|/ \   /  |  / |/ |    _|    _ |/   |   |  /    
#\_/|_/\__/ |__/\__/ |   |_/\_/|_/  |  |_/o(/\___/\_/\/   \_/   \___/
#                                                                    
#
#!/bin/zsh # Because I use zsh hehe..

# This just gives the ability to display cool text, heres my example:

sudo apt install figlet lolcat -y
figlet "dolohan.LIVE" | lolcat

# First we gotta update and install some dependencies or more like compliments in a case like this*

sudo apt update -y
sudo apt install dirmngr gnupg apt-transport-https -y ca-certificates software-properties-common

# Import the repository’s GPG key and the Sublime APT repository to your system’s software repository list by typing:

curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update # Again..

# Install Sublime Text 3

sudo apt install sublime-text

# This is very easy, just slapped it together thanks to this guide here:
# https://linuxize.com/post/how-to-install-sublime-text-3-on-ubuntu-20-04/

# I know this stuff is simple, I am just trying to get used to the entire process, and yes GIT scares the shit outta
# me and would like any help and / or tips when it comes to GIT.
