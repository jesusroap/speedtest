# Usa la imagen oficial de PHP con FPM
FROM php:8.2-fpm-alpine

# Instala Nginx y otras dependencias
RUN apk add --no-cache nginx bash supervisor curl git \
    && docker-php-ext-install pdo pdo_mysql

# Copia el código fuente
WORKDIR /var/www/html
COPY . .

# Configura permisos
RUN chown -R www-data:www-data /var/www/html

# Copia archivos de configuración de Nginx y Supervisor
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY supervisord.conf /etc/supervisord.conf

# Exponer puertos
EXPOSE 80

# Iniciar Supervisor (que ejecuta Nginx y PHP-FPM juntos)
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]