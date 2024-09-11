scp resolvconf.conf local.pem client@10.0.2.15:~/
ssh client@10.0.2.22 -t "sudo resolvconf -u"
