FROM newnius/php:7.1

MAINTAINER Newnius <docker@newnius.com>

RUN curl -L https://github.com/newnius/short-link/archive/0.2.0.tar.gz > /var/www/shortlink.tar.gz \
    && tar -C /var/www -xzvf /var/www/shortlink.tar.gz \
    && mv /var/www/short-link-0.2.0 /var/www/html \
    && rm -rf /var/www/short-link-0.2.0 \
    && rm /var/www/shortlink.tar.gz


ADD config/config.js /var/www/html/static/

ADD config/config.inc.php /var/www/html/

ADD bootstrap.sh /etc/

CMD /etc/bootstrap.sh