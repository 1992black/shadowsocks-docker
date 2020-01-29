#!/bin/bash

sh_config='
{
  "server":"0.0.0.0",
  "local_address": "127.0.0.1",
  "local_port":'$LOCAL_PORT',
  "server_port":8989,
  "password":"'$PASSWORD'",
  "timeout":300,
  "method":"'$METHOD'",
  "fast_open": false
}
'

# echo $sh_config > shadowsocks.json
echo `sed -i 's/EVP_CIPHER_CTX_cleanup/EVP_CIPHER_CTX_reset/g' /usr/local/lib/python3.6/site-packages/shadowsocks/crypto/openssl.py`
echo `ssserver -c /shadowsocks.json -d start`