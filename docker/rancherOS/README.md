## Install rancherOS

`sudo rancheros-install -c cloud_config.yml -d /dev/sda`

`sudo docker run -d --restart=always -p 8080:8080 rancher/server`