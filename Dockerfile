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

# Optimizaciones para producción (solo cache de configuración y vistas)
RUN php artisan config:cache \
    && php artisan view:cache

# Configurar permisos
RUN chmod -R 777 storage bootstrap/cache

# Exponer puerto
EXPOSE 8080

# Script de inicio
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Comando para iniciar el servidor
ENTRYPOINT ["docker-entrypoint.sh"]
CMD php artisan serve --host=0.0.0.0 --port=$PORT