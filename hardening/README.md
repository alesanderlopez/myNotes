# Hardening

# Urls
https://wiki.centos.org/Events/Dojo/Madrid2013?action=AttachFile&do=get&target=Hardening_CentOS.pdf

## Pautas
1. Desactivar Selinux
2. Desactivar IPv6 
    sysctl -w net.ipv6.conf.default.disable_ipv6=1
    sysctl -w net.ipv6.conf.all.disable_ipv6=1 

## Fail2ban

En primer lugar procedemos a instalar el fail2ban a traves de nuestro gestor de paquetes.
```
yum install -y fail2ban 
```

Una vez instalado modificamos los siguientes parámetros en el **/etc/fail2ban/jail.conf**
```
bantime  = 3600 // 1 hora de baneo
maxretry = 3 // 3 intentos erroneos
destemail = alesander@mhp.es // email de alerta

[sshd]
enabled = true // Añadir para activar en SSH
```

Ahora una vez configurado lo arrancamos y lo añadimos al arranque del CentOS.
```
systemctl start fail2ban 
systemctl enable fail2ban
```

**Ver intentos SSH**

Para ver los intentos de SSH fallidos o los bloqueados en fail2ban solamente basta con ejecutar el siguiente comando.
```
fail2ban-client status sshd show
```

También podemos revisar el fichero de log **/var/log/secure**
```
cat /var/log/secure | grep Failed 

// Cuenta de intentos
cat /var/log/secure | grep Failed | wc -l 
```

