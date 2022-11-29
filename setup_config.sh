config_file=$1.conf
config_path=/etc/apache2/sites-available/

#Create file in
echo -e "<VirtualHost *:80> \n ServerAdmin produskycorp@gmail.com\n ServerName $1\n ServerAlias www.$1\n DocumentRoot /var/www/$1/public_html\n</VirtualHost>" > $config_path$config_file
echo "File configured"

mkdir /var/www/$1
mkdir /var/www/$1/public_html
echo "Document root created"

a2ensite $1

systemctl reload apache2
echo "systemctl reloaded"

echo "You can now deploy on"
echo "/var/www/$1/public_html"
