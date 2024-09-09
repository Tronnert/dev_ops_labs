sudo pacman -S bind nginx openresolv python-flask mkcert nss
sudo cp named.conf /etc
sudo cp db.10.0 /var/named
sudo cp db.memes.com /var/named
sudo cp resolvconf.conf /etc

sudo mkcert --install
sudo mkcert memes.com

sudo cp memes.com.conf /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/memes.com.conf /etc/nginx/sites-enabled/
