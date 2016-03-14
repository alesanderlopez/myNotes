# SSH

## SSH Proxy 
1. Instalar en el equipo cliente el servidor proxy squid 
```
sudo yum install -y squid 
```

2. Arrancamos el servicio tal cual sin tocar nada en la configuración.
```
sudo systemctl start squid

// Si queremos que este siempre activo al reiniciar.
sudo systemctl enable squid 
```

3. Hacer el siguiente SSH
```
ssh -R 3128:localhost:3128 root@IPSERVIDOR

// Una vez dentro el siguiente comando
export http_proxy=http://localhost:3128

// Para que siempre este activo añadir al .bashrc
echo 'export http_proxy=http://localhost:3128' >> .bashrc
```

## Apliaciones graficas
ssh -x usuario@SERVIDOR 


