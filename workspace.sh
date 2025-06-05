# Atualização da Distro
sudo apt update && sudo apt upgrade -y
sudo apt install curl gpg gcc g++ plocate -y

# Instalação e configuração do Apache2
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

# Instalação e configuração do MySQL
sudo apt install mysql-server -y
sudo mysql_secure_installation

# Alterando as senha do root
sudo mysql -u root
ALTER USER 'root'@'localhost' IDENTIFIED BY 'sua_senha_aqui';
FLUSH PRIVILEGES;
EXIT;

# Validando a alteracao da senha
mysql -u root -p

# Instalação do PHP
sudo apt install php libapache2-mod-php php-mysql php-cli php-curl php-json php-cgi php-xml php-mbstring php-zip php-gd -y

# Instalação do PHPMyAdmin
sudo apt install phpmyadmin -y
