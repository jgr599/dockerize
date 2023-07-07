#start from base img
FROM php:8.2-fpm-alpine3.18
#install nginx
RUN apk add nginx
#copy
COPY . /var/www/php_crud
#COPY SErver block /etc/nginx/http.d/php_crud.conf
COPY  php_crud.conf ./etc/nginx/http.d/php_crud.conf

#RUN php-fpm -D
#EXPOSE PORT
EXPOSE 9090

#cmd daemon off
CMD php-fpm -D;nginx -g "daemon off;"





