#!/bin/sh
set -e

# PHP-FPM'i arka planda başlat
php-fpm &

# Supervisor'ı ön planda başlat
exec supervisord --nodaemon --configuration /etc/supervisord.conf