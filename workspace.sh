# Atualização da Distro
sudo apt update && sudo apt upgrade -y
sudo apt install curl gpg gcc g++ plocate -y

# Instalação e configuração do Apache2
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

# Instalação e configuração do MySQL
sudo apt install mysql-server -y
sudo mysql_secure_installation # N Y Y Y Y

# Instalação do PHP
sudo apt install php libapache2-mod-php php-mysql php-cli php-curl php-json php-cgi php-xml php-mbstring php-zip php-gd -y

# Instalação do PHPMyAdmin
sudo apt install phpmyadmin -y
sudo phpenmod mbstring
sudo systemctl restart apache2

# Configuracao dos Proxys do Apache2
sudo a2enmod proxy proxy_http proxy_balancer lbmethod_byrequests

sudo nano /etc/apache2/sites-available/lampp.conf

<VirtualHost *:80>
    ServerName app.local
    
    ProxyPreserveHost On
    ProxyRequests Off
    
    ProxyPass / http://localhost:3000/
    ProxyPassReverse / http://localhost:3000/
    
    ErrorLog ${APACHE_LOG_DIR}/proxy_error.log
    CustomLog ${APACHE_LOG_DIR}/proxy_access.log combined
</VirtualHost>

sudo apt-get install -y git-all


git config --global user.email ""
git config --global user.name ""
