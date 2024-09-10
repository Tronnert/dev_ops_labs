sudo mv ~/resolvconf.conf /etc
sudo resolvconf -u
mkdir -p ~/local_certs
export CAROOT="~/local_certs"
mv ~/local.pem ~/local_certs
mkcert --install