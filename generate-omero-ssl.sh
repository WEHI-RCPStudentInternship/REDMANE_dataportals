#!/bin/bash
cd ~/cbioportal-docker-compose
sudo certbot certonly \
  --webroot \
  -w ./certbot/www \
  -d omero.wehi-rcp.cloud.edu.au
echo "Certificate saved: /etc/letsencrypt/live/omero.wehi-rcp.cloud.edu.au-0001/"
