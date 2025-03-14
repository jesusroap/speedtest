FROM php:8.2-fpm-alpine

# Instala Nginx y Supervisor
RUN apk add --no-cache nginx supervisor

# (Opcional) Instala extensiones PHP que necesites, por ejemplo, para PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Define el directorio de trabajo
WORKDIR /var/www/html

# Copia el código fuente al contenedor
COPY . /var/www/html

# Ajusta permisos para www-data (si es necesario)
RUN chown -R www-data:www-data /var/www/html

# Copia la configuración de Nginx y Supervisor
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY supervisord.conf /etc/supervisord.conf

# Expone el puerto 80 para Nginx
EXPOSE 80

# Inicia Supervisor para lanzar PHP‑FPM y Nginx
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]