php-fpm 7.3.3 base image
=============

Docker image for php-fpm 7.3.3 production and development images, contains common software

[Available extensions for install](https://github.com/php/php-src/blob/PHP-7.3.3/EXTENSIONS)

    docker pull mcsim/php-fpm-7.3.3-xdebug:latest

Build command:

    docker build --build-arg TIME_ZONE=Europe/Moscow -t php-fpm-7.3.3:latest .
    
