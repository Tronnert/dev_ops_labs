scp ~/.local/share/mkcert/rootCA.pem resolvconf.conf client_script.sh client@10.0.2.15:~/
ssh client@10.0.2.15 -t "./client_script.sh"
