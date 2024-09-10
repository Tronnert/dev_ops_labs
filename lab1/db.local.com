$TTL    604800
@       IN      SOA     local.com. admin.local.com. (
                  3     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      local.com.

; name servers - A records
local.com.          IN      A       10.0.2.16
memes.local.com.          IN      A       10.0.2.16
songs.local.com.          IN      A       10.0.2.16
