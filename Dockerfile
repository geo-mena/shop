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
WORKDIR /var/www/html

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias
RUN composer install --no-scripts --optimize-autoloader
RUN npm install
RUN npm run dev

# Limpiar y regenerar caches
RUN php artisan storage:link
RUN php artisan cache:clear
RUN php artisan config:clear
RUN php artisan view:clear
RUN php artisan route:clear

# Configurar permisos
RUN chmod -R 777 storage bootstrap/cache

EXPOSE 80

CMD php artisan serve --host=0.0.0.0 --port=$PORT