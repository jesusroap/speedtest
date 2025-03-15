# Utiliza la imagen base de Alpine
FROM alpine:latest

# Instala Apache
RUN apk update && \
    apk add apache2 && \
    rm -rf /var/cache/apk/*

# Copia los archivos de tu aplicación al directorio de Apache
COPY ./public-html/ /var/www/localhost/htdocs/

# Expone el puerto 80
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD ["httpd", "-D", "FOREGROUND"]