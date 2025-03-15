# Utiliza la imagen oficial de PHP con Apache
FROM php:8.1-apache

# Copia los archivos de tu aplicación al directorio predeterminado de Apache
COPY . /var/www/html/

# Habilita el módulo de reescritura de Apache, si es necesario
RUN a2enmod rewrite

# Expone el puerto 80
EXPOSE 80