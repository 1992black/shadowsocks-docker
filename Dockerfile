FROM centos:latest

RUN yum install python3 python3-pip -y
RUN python3 -m pip install shadowsocks
 
ADD . /
RUN chmod +x /entrypoint.sh 
RUN sed -i 's/EVP_CIPHER_CTX_cleanup/EVP_CIPHER_CTX_reset/g' /usr/local/lib/python3.6/site-packages/shadowsocks/crypto/openssl.py

CMD /entrypoint.sh
