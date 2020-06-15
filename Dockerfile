FROM nginx

RUN apt update && \ 
apt install python3-acme python3-certbot python3-mock python3-openssl python3-pkg-resources python3-pyparsing python3-zope.interface python3-certbot-nginx -y

ADD https://github.com/jordanwentland/nginx-certbot/releases/download/0.1/config.sh /

RUN chmod +x /config.sh

CMD ["/bin/bash"]