# armbuildkersing

Build Jac Kersing's multi protocol package forwarder https://github.com/kersing/packet_forwarder for _LPS8_ in docker container

Use like ` docker-compose up --build ` and find result in `bindir`

then e.g. 
```bash
mkdir -p ~/mnt
sshhfs root@lps8-ip-addr:/ ~/mnt
kurz@TKPC:~/buildKersingOnOpenWRT$ cp bindir/*.so  ~/mnt/lib/
kurz@TKPC:~/buildKersingOnOpenWRT$ cp bindir/mp_pkt_fwd ~/mnt/bin/mp_pkt_fwd

ssh root@lps8-ip-addr bash -c "/usr/bin/reset_lgw.sh start && mp_pkt_fwd -d /dev/spidev1.0 -s 8000000 -c /etc/lora/"
```
