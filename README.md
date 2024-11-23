<h1 align="center">
    SHOP
</h1>

<div align="center">
    <img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white" alt="PHP">
    <img src="https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white" alt="Laravel">
    <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
    <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript">
    <img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white" alt="Node.js">
    <img src="https://img.shields.io/badge/Composer-885630?style=for-the-badge&logo=composer&logoColor=white" alt="Composer">
    <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white" alt="Bootstrap">
</div>
<hr>
Este proyecto en PHP Laravel presenta una atractiva exhibición de productos nuevos, destacados y populares. Los usuarios pueden navegar por una selección ordenada de los mejores productos, organizados en categorías para facilitar su exploración.

Ya sea moda para hombres, ropa para mujeres u otras categorías, los clientes pueden encontrar fácilmente productos según sus preferencias gracias a opciones específicas de clasificación y navegación por categorías. Las categorías son gestionadas por el administrador y pueden adaptarse según las necesidades.

Cada producto muestra tanto su precio original como el precio con descuento, lo que mejora la experiencia de compra. El sitio web ofrece todas estas secciones para que los usuarios puedan navegar y descubrir nuevos productos de interés.

## Tabla de Contenidos

-   [Características](#características)
-   [Instalación](#instalación)
-   [Configuración](#configuración)
-   [Uso](#uso)
-   [Despliegue](#despliegue)
-   [Licencia](#licencia)

## Características

-   Panel de Cliente
-   Panel de Administrador
-   Productos Destacados y Principales
-   Filtro de Productos
-   Descuentos en Productos
-   Código de Cupón
-   Agregar al Carrito
-   Agregar a Lista de Deseos
-   Sistema de Seguimiento de Pedidos
-   Ver Pedido
-   Calificar y Reseñar Productos
-   Gestión de Medios y Banner
-   Gestión de Categorías de Productos
-   Gestión de Productos
-   Gestión de Pedidos
-   Gestión de Marcas y Envíos X
-   Gestor de Carga: Archivos Multimedia
-   Configuración del Sitio Web
-   Gestión de Usuarios
-   Gestión de Cupones
-   Gestión de Reseñas y Comentarios
-   Notificaciones para Administrador
-   Resumen de Ganancias
-   Configuración de Perfil

## Instalación

1. Clonar el repositorio:

    ```bash
    git clone https://github.com/eitecknologia/shop-eiteck.git
    ```

2. Acceder al directorio del proyecto:

    ```bash
    cd shop-eiteck
    ```

## Configuración

1.  Abre la carpeta del proyecto, verifica que exista el archivo `.env` y actualiza las credenciales de la base de datos.
2.  Crea una base de datos MySQL con el nombre especificado en el archivo `.env`.
3.  Abre el proyecto en el **Terminal o en el Símbolo del Sistema.**
4.  Instala los paquetes de Node.js:
    ```bash
    npm install
    ```
5.  Instala las dependencias de Composer:
    ```bash
    composer install
    ```
6.  Vincula el almacenamiento:
    ```bash
    php artisan storage:link
    ```
7.  Para configurar la base de datos, puedes importar el archivo SQL proporcionado o iniciar una nueva configuración siguiendo los comandos a continuación.
8.  Migra las tablas:
    ```bash
    php artisan migrate
    ```
9.  Ejecuta los seeders:
    ```bash
    php artisan db:seed
    ```
10. Genera la clave de la aplicación:
    ```bash
    php artisan key:generate
    ```

## Uso

1.  Inicia el servidor:
    ```bash
    php artisan serve
    ```
2.  Abre tu navegador y accede a la dirección `http://localhost:8000`.

## Despliegue

1.  Para compilar los activos:
    ```bash
    npm run dev
    ```
2.  Para compilar los activos en producción:
    ```bash
    npm run prod
    ```
3.  Para limpiar la caché de configuración:
    ```bash
    php artisan config:clear
    ```
4.  Para limpiar la caché de rutas:
    ```bash
    php artisan route:clear
    ```
5.  Para limpiar la caché de vistas:
    ```bash
    php artisan view:clear
    ```
6.  Para limpiar la caché de configuración y rutas:
    ```bash
    php artisan cache:clear
    ```
7.  Para limpiar la caché de configuración, rutas y vistas:
    ```bash
    php artisan optimize:clear
    ```

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [MIT license](https://opensource.org/licenses/MIT) para más detalles.
