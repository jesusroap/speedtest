<?php
$host = '0.0.0.0';
$port = 8080; // Cambié de 8000 a 8080

echo "Servidor corriendo en http://$host:$port\n";
exec("php -S $host:$port -t public");