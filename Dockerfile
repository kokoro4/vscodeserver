# VIsualCode Server
FROM centos:latest 
COPY code-server-3.5.0-linux-x86_64.tar.gz code-server-3.5.0-linux-x86_64.tar.gz 
# Configure apt and install packages
RUN yum update -y
RUN yum install wget -y
RUN wget https://github.com/cdr/code-server/releases/download/v3.5.0/code-server-3.5.0-linux-x86_64.tar.gz 
RUN tar zxvf code-server-3.5.0-linux-x86_64.tar.gz
CMD code-server-3.5.0-linux-x86_64/code-server 
