# Hardening

# Urls
https://wiki.centos.org/Events/Dojo/Madrid2013?action=AttachFile&do=get&target=Hardening_CentOS.pdf

## Pautas
1. Desactivar Selinux
2. Desactivar IPv6 
    sysctl -w net.ipv6.conf.default.disable_ipv6=1
    sysctl -w net.ipv6.conf.all.disable_ipv6=1 