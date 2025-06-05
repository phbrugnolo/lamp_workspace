# Atualização da Distro
sudo apt update && sudo apt upgrade -y

# Instalação e configuração do Apache2
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

# Instalação e configuração do MySQL
sudo apt install mysql-server -y
sudo mysql_secure_installation

# Instalação do PHP
sudo apt install php libapache2-mod-php php-mysql php-cli php-curl php-json php-cgi php-xml php-mbstring php-zip php-gd -y

# Instalação do PHPMyAdmin
sudo apt install phpmyadmin -y
