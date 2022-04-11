# Unclear how many of these are necessary
export CPPFLAGS="-I/usr/local/opt/openssl@3/include -I/usr/local/opt/nss/include"
export CFLAGS="-I/usr/local/opt/openssl@3/include -I/usr/local/opt/nss/include"
export LDFLAGS="-L/usr/local/opt/openssl@3/lib -L/usr/local/opt/nss/lib"

cmake . -DBUILD_NOTHING_BY_DEFAULT=1 -DBUILD_UDPGW=1

# This will fail, but whatever
make

# This should work
cd udpgw
make
