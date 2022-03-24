FROM centos:7
MAINTAINER "shruti"
LABEL "App"="Devlopemnt"
RUN yum install httpd -y
COPY index.html /var/www/html
EXPOSE 80
RUN systemctl enable httpd
CMD ["httpd", "-D", "FOREGROUND"]
