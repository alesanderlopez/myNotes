# Apache 

# Estadisticas de vistias
http://goaccess.io/man

## VHOST

## Add in conf/httpd.conf
`IncludeOptional sites-enabled/*.conf`

```xml
<VirtualHost *:80>
    RedirectPermanent / https://www.DOMINIO/
    ServerName www.DOMINIO
    ServerAlias www.DOMINIO
    ErrorLog /var/log/DOMINIO/https_error.log
    CustomLog /var/log/DOMINIO/https.log combined
</VirtualHost>

<VirtualHost *:80>
    RedirectPermanent / https://www.DOMINIO/
    ServerName www.DOMINIO
    ServerAlias www.DOMINIO
    ErrorLog /var/log/DOMINIO/https_error.log
    CustomLog /var/log/DOMINIO/https.log combined
</VirtualHost>

<VirtualHost *:443>
    SSLEngine on
    SSLCertificateFile /opt/certificados/DOMINIO.es.crt
    SSLCertificateKeyFile /opt/certificados/DOMINIO.es.key
    <Directory "/var/www/DOMINIO">
                Options Indexes FollowSymLinks
                AllowOverride All
                Order allow,deny
                Allow from all
        </Directory>
    AddDefaultCharset UTF-8
    ServerName www.DOMINIO
    ServerAlias www.DOMINIO
    DocumentRoot /var/www/DOMINIO/
    ErrorLog /var/log/DOMINIO/https_error.log
    CustomLog /var/log/DOMINIO/https.log combined
</VirtualHost>
```