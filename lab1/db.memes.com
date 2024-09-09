$TTL    604800
@       IN      SOA     memes.com. admin.memes.com. (
                  3     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      memes.com.

; name servers - A records
memes.com.          IN      A       10.0.2.16
