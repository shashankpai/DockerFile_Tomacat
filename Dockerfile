FROM centos:centos6
RUN RUN yum update -y
    yum install -y centos-release-scl && \
    yum install -y python27 && \
    echo -e "[mongodb-org-3.2]\nname=MongoDB Repository\nbaseurl==https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/\ngpgcheck=1\nenabled=1\ngpgkey=https://www.mongodb.org/static/pgp/server-3.2.asc" > /etc/yum.repos.d/mongodb-org.repo && \
    yum install -y mongodb-org && \
    yum install -y tomcat6
EXPOSE 8080
