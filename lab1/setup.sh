sudo pacman -S bind nginx openresolv python-flask mkcert nss
sudo cp named.conf /etc
sudo cp db.10.0 /var/named
sudo cp db.local.com /var/named
sudo cp resolvconf.conf /etc



sudo mkcert --install
sudo mkcert local.com memes.local.com songs.local.com -key-file local-key.pem -cert-file local.pem

sudo cp nginx.conf /etc/nginx

sudo systemctl restart named

sudo resolvconf -u

sudo systemctl restart nginx

sudo nginx -s reload

