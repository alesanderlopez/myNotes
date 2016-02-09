# Systemd 

## Demonio servicio

`vim /etc/systemd/system/node-sample.service`

```bash
[Service]
ExecStart=/opt/node-v4.2.6-linux-x64/bin/node /opt/www/node-sample/bin/www
Restart=always
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=node-sample
User=node
Group=node
Environment=NODE_ENV=production

[Install]
WantedBy=multi-user.target
```

```bash
systemctl enable node-sample
systemctl start node-sample
```