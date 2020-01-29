FROM centos:latest

RUN yum install python python-pip -y
RUN python -m pip install shadowsocks
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
