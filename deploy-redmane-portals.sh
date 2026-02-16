#!/bin/bash
echo "Starting REDMANE Data Portals production deployment"
cd ~/cbioportal-docker-compose
sudo docker compose -f docker-compose.https.yml up -d
docker rm -f omero-web || true
docker run -d --name omero-web \
  --network cbioportal-docker-compose_cbio-net \
  -v ~/omero-landing:/usr/share/nginx/html:ro \
  nginx:alpine
echo "cBioPortal: https://cbioportal.wehi-rcp.cloud.edu.au/"
echo "OMERO: https://omero.wehi-rcp.cloud.edu.au/"
