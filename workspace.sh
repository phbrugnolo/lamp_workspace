sudo apt update && sudo apt upgrade -y
sudo apt install curl gpg gcc g++ plocate git-all mysql-server -y

sudo mysql_secure_installation

sudo mysql -u root -p
CREATE USER 'dev'@'localhost' IDENTIFIED BY 'admin123';
GRANT ALL PRIVILEGES ON *.* TO 'dev'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EXIT;

sudo apt install php php-mysql php-cli php-curl php-json php-cgi php-xml php-mbstring php-zip php-gd -y

git config --global user.email ""
git config --global user.name ""
