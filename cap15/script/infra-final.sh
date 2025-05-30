#!/usr/bin/sh

ZONE=$(curl http://metadata.google.internal/computeMetadata/v1/instance/zone -H "Metadata-Flavor: Google")

sudo apt update

sudo apt install nginx -y

sudo cat <<EOF > /var/www/html/index.html
<html><body><h1>Hello from <b style="color:red">WEB TIER ${ZONE}</b></h1></body></html>
EOF