FROM dtr.aws.e1.nwie.net/library/centos:latest

LABEL mainainer="NG.Cloud.Support@nationwide.com"

EXPOSE 8080
CMD nginx

RUN set -x \
    && yum -y install nginx \
    && yum clean all \
    && rm -rf /var/cache/yum \
    && ln -s /dev/stdout /var/log/nginx/access.log \
    && ln -s /dev/stderr /var/log/nginx/error.log

ADD nginx.conf /etc/nginx
