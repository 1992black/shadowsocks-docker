#!/bin/bash

sh_config='
{\n
  "server":"0.0.0.0",\n
  "local_address": "127.0.0.1",\n
  "local_port":'$LOCAL_PORT',\n
  "server_port":8989,\n
  "password":"'$PASSWORD'",\n
  "timeout":300,\n
  "method":"'$METHOD'",\n
  "fast_open": false\n
}
'

echo $sh_config > shadowsocks.json

./shadowsocks.sh start