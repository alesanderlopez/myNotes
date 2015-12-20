# MySQL

## MySQL Seguro

```bash
yum install mariadb-server
/usr/bin/mysql_secure_installation
```

## Remoto

```bash
/etc/mysql/my.cnf
skip-external-locking
bind-address = 0.0.0.0

systemctl restart mysql

mysql –u root -p

GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
```
