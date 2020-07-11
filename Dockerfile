FROM centos:7
ARG filename
RUN yum install httpd -y
RUN yum -y install php 
RUN yum install php-common \
    php \
    php-mysql\
   php-xml\
    php-soap\
    ncurses \
    net-tools -y
COPY $filename /var/www/html/

CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80


