FROM php:8.1-fpm

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    nodejs \
    npm

# Instalar extensiones PHP
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Instalar Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos de composer
COPY composer.json composer.lock ./
RUN composer install --no-scripts --no-autoloader

# Copiar archivos de npm
COPY package.json package-lock.json ./
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Generar autoload de composer
RUN composer dump-autoload --optimize

# Limpiar y regenerar caches
RUN php artisan cache:clear && \
    php artisan config:clear && \
    php artisan view:clear && \
    php artisan route:clear && \
    php artisan config:cache && \
    php artisan view:cache

# Configurar permisos
RUN chmod -R 777 storage bootstrap/cache

# Exponer puerto
EXPOSE 8080

# Script de inicio
COPY <<'EOF' /app/start.sh
#!/bin/sh
set -e

# Convertir PORT a número entero
PORT=${PORT:-8080}
PORT=$(($PORT + 0))

# Iniciar el servidor con el puerto como número
exec php artisan serve --host=0.0.0.0 --port=$PORT
EOF

RUN chmod +x /app/start.sh

# Comando para iniciar el servidor
ENTRYPOINT ["/app/start.sh"]