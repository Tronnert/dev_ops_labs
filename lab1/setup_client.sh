scp local.pem client@10.0.2.15:~/.local/share/
scp resolvconf.conf client@10.0.2.15:~/
ssh client@10.0.2.15 -t "export CAROOT="$HOME/.local/share/" && mkcert --install && sudo mv ~/resolvconf.conf /etc sudo resolvconf -u"
