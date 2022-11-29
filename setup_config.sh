config_file=$1.conf
touch $config_file

#Create file in
echo -e "<VirtualHost *:80> \n ServerAdmin $2\n ServerName $1\n ServerAlias www.$1\n DocumentRoot /var/www/$1/public_html\n</VirtualHost>" > $config_file
