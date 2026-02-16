
## SSL Certificate Management
```bash
chmod +x generate-omero-ssl.sh
./generate-omero-ssl.sh
docker exec cbioportal-nginx nginx -t
docker exec cbioportal-nginx nginx -s reload

## Validation Commands
```bash
curl -I https://cbioportal.wehi-rcp.cloud.edu.au/  # 200 OK
curl -I https://omero.wehi-rcp.cloud.edu.au/        # 200 OK

