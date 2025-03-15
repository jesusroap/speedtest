# Utiliza la imagen base de Apache en Alpine
FROM httpd:alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/local/apache2/htdocs/

# Copia todos los archivos y directorios desde la raíz del repositorio al directorio de trabajo en el contenedor
COPY . .

# Expone el puerto 80
EXPOSE 80

# Comando para ejecutar Apache en primer plano
CMD ["httpd", "-D", "FOREGROUND"]