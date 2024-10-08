# استخدم صورة PHP الأساسية
FROM php:7.4-apache

# نسخ ملفات الموقع إلى مجلد الـ Apache
COPY . /var/www/html/

# تعيين إعدادات Apache لتشغيل على البورت 9000
EXPOSE 9009

# إعداد Apache للعمل على البورت 9000
RUN echo "Listen 9009" >> /etc/apache2/ports.conf
