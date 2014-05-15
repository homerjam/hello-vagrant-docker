# DOCKER-VERSION 0.8.0

FROM centos:6.4

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

RUN yum install -y npm

ADD . /app

# Not necessary because node_modules are bundled
# RUN cd /app; npm install

EXPOSE 5000

CMD ["node", "/app/index.js"]