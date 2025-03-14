FROM php:8.2-fpm-alpine

# Instalar extensiones necesarias
RUN apk add --no-cache nginx bash \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
COPY . .

# Configurar permisos
RUN chown -R www-data:www-data /var/www/html

CMD ["php-fpm"]
