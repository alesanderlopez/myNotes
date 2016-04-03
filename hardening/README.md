# Hardening

## Urls
https://wiki.centos.org/Events/Dojo/Madrid2013?action=AttachFile&do=get&target=Hardening_CentOS.pdf

## Pautas
1. Desactivar Selinux
2. Desactivar IPv6 
```    
sysctl -w net.ipv6.conf.default.disable_ipv6=1
sysctl -w net.ipv6.conf.all.disable_ipv6=1 
```

## Fail2ban

En primer lugar procedemos a instalar el fail2ban a traves de nuestro gestor de paquetes.
```bash
yum install -y fail2ban 
```

Una vez instalado modificamos los siguientes parámetros en el **/etc/fail2ban/jail.conf**
```bash
bantime  = 3600 // 1 hora de baneo
maxretry = 3 // 3 intentos erroneos
destemail = alesander@mhp.es // email de alerta

[sshd]
enabled = true // Añadir para activar en SSH
```

Ahora una vez configurado lo arrancamos y lo añadimos al arranque del CentOS.
```bash
systemctl start fail2ban 
systemctl enable fail2ban
```

**Ver intentos SSH**

Para ver los intentos de SSH fallidos o los bloqueados en fail2ban solamente basta con ejecutar el siguiente comando.
```bash
fail2ban-client status sshd show
```

También podemos revisar el fichero de log **/var/log/secure**
```bash
cat /var/log/secure | grep Failed 

// Cuenta de intentos
cat /var/log/secure | grep Failed | wc -l 
```

## Actualizaciones de seguridad automáticas

Para automatizar podemos usar yum-cron que queda más elegante que añadir al crontab un **yum --security upgrade** 

```bash
yum install -y yum-cron
```

Configuramos ahora yum-cron **/etc/yum/yum-cron.conf**
```bash
// vim /etc/yum/yum-cron.conf

update_cmd = security
apply_updates = yes
```

```bash
systemctl start yum-cron
systemctl enable yum-cron
```

## Rkhunter 
Para instalar tanto en CentOS como en MacOS
```bash
brew install rkhunter // MacOS
yum install -y rkhunter // CentOS

// Para actualizar la db de rootkits.
rkhunter --propupd

// Para realizar un escaneo.
sudo rkhunter --check
```
