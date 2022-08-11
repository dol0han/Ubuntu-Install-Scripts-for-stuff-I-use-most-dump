
#            _        _                       _      _  _          _
#   |       | |      | |                   \_|_)    | |(_|   |_// (_)
# __|   __  | |  __  | |     __,   _  _      |      | |  |   |  \__   
#/  |  /  \_|/  /  \_|/ \   /  |  / |/ |    _|    _ |/   |   |  /    
#\_/|_/\__/ |__/\__/ |   |_/\_/|_/  |  |_/o(/\___/\_/\/   \_/   \___/  

sudo apt update 
sleep 11
sudo apt install apache2 \
                curl \
                ghostscript \
                libapache2-mod-php \
                mysql-server \
                php \
                php-bcmath \
                php-curl \
                php-imagick \
                php-intl \
                php-json \
                php-mbstring \
                php-mysql \
                php-xml \
                php-zip -y


sleep 11
# We will use the release from WordPress.org rather than the APT package in the Ubuntu Archive, because this is the preferred method from upstream WordPress. This will also have fewer “gotcha” problems that the WordPress support volunteers will not be able to anticipate and therefore be unable to help with.Create the installation directory and download the file from WordPress.org:
sleep 11
sudo mkdir -p /srv/www # Makes the 'web-server content folder': pages,php,etc
sleep 11
#
sudo chown www-data: /srv/www # Edit Permissions
sleep 11
# Downloads WordPress Installer

curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www 
#
sudo touch /etc/apache2/sites-available/wordpress.conf && echo "<VirtualHost *:80> \n
    DocumentRoot /srv/www/wordpress \n
    <Directory /srv/www/wordpress> \n
        Options FollowSymLinks \n
        AllowOverride Limit Options FileInfo \n
        DirectoryIndex index.php \n
        Require all granted \n
    </Directory> \n
    <Directory /srv/www/wordpress/wp-content> \n
        Options FollowSymLinks \n
        Require all granted \n
    </Directory> \n
</VirtualHost>" >> /etc/apache2/sites-available/wordpress.conf
#
sleep 11
# Enable the site with:
sudo a2ensite wordpress
sleep 11
# Enable URL rewriting with:
#
sudo a2enmod rewrite
sleep 11
# Disable the default “It Works” site with:
#
sudo a2dissite 000-default
sleep 11
# TODO! Craft a command to ask user if they want to edit their hostname 
# now? I have to make this feature automatic. Taking user input, "domain.com" 
# as a variable to be used for 'Host')
#
# Do you want to edit our configuration file to add a hostname that the 
# WordPress installation will respond to requests for. This hostname must 
# be mapped to your box somehow, e.g. via DNS, or edits to the client 
# systems’ /etc/hosts file (on Windows the equivalent is 
# C:\Windows\System32\drivers\etc\hosts). Add ServerName as below:
#
# <VirtualHost *:80>
#    ServerName hostname.example.com
#    ... # the rest of the VHost configuration
# </VirtualHost>
#
# Reload the web server with new configurations..
#
sudo service apache2 reload
sleep 11
# Create MySQL database and tables:
#
#
systemctl enable mysql
sleep 11
systemctl start mysql

echo "Now the script will exit and have you setup your MySQL database"
sudo mysql -u root
sleep 11

