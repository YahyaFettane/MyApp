FROM php:8.1-apache
COPY src/ /var/ww/html/
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["apache2-foreground"]