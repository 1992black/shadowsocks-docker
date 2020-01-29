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

echo `ssserver -c /shadowsocks.json -d start`