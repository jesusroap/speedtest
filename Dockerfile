FROM php:8.2-cli-alpine

WORKDIR /var/www/html
COPY . .

CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]
