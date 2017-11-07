FROM centos:latest
MAINTAINER http://www.centos.org

RUN yum -y update && yum clean all
RUN yum -y groupinstall "Development Tools" && yum clean all

EXPOSE 80

ADD file /

RUN g++ server.cpp -o server
RUN g++ client.cpp -o client

CMD ["/bin/bash"]