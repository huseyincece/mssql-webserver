FROM php:7.4-fpm-alpine

RUN apk update && apk add --no-cache nginx

COPY QuickDbTest.php /var/www/html/

CMD ["nginx", "-g", "daemon off;"]
