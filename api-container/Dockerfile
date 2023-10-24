# Use 7.1-apache web server
FROM php:7.1-apache

# Install MSSQL driver and other necessary extensions
RUN apt-get update && apt-get install -y \
    unixODBC \
    unixODBC-dev \
    && pecl install sqlsrv pdo_sqlsrv \
    && docker-php-ext-enable sqlsrv pdo_sqlsrv

# Copy your QuickDbTest.php script to the web-root folder
COPY QuickDbTest.php /var/www/html/

# Expose the default web server port (80)
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
