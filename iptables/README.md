# Iptables

## Enmascarar servidor destino
```bash
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination $SERVIDOR_FINAL:80
iptables -t nat -A POSTROUTING -j MASQUERADE
```

## DNAT Multiport
```bash
iptables -t nat -A PREROUTING -d $IP/$RANGO -p tcp -m multiport --dports 25,143,993,995 -j DNAT --to-destination $SERVIDOR_DESTINO
```

## SNAT / Enmascarar servidor origen
```bash
iptables -t nat -A POSTROUTING -s 192.168.200.30/32 -j SNAT --to-source 84.124.11.186
```

## NAT Forwarding
```bash
eth0 = interfaz publica;
echo 1 > /proc/sys/net/ipv4/ip_forward;
#echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf;
sed -i "s/net.ipv4.ip_forward = 0/net.ipv4.ip_forward = 1/" /etc/sysctl.conf
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -j ACCEPT
iptables-save > /opt/iptables_NAT
```
