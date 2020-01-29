FROM centos:latest

RUN yum install python3 python3-pip -y
RUN python3 -m pip install shadowsocks
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
