# REDMANE Data Portals - Deployment History

## Week 11 (29th Jan 2026)
- Migrated from nginx reverse proxy to https-portal container
- Zero-maintenance Let's Encrypt SSL certificates
- All services accessible via HTTPS

## Week 12 (5th Feb 2026)  
- Added custom OMERO landing page (no nginx container modification)
- External volume mount for omero-landing/index.html
- Preserved upgrade compatibility

## Infrastructure
- Ubuntu 22.04 LTS VM (redmane-data-portals.wehi-rcp.cloud.edu.au)
- Docker 27.1.1, docker-compose 2.29.2
- 8GB RAM, 4 vCPU, 100GB SSD

## Week 13 (15th Feb 2026) - OMERO SSL Integration
- Generated dedicated Let's Encrypt SSL certificate for omero.wehi-rcp.cloud.edu.au
- Updated nginx.conf with OMERO HTTPS server block (proxy_pass to omero-web:80)
- Graceful nginx reload (zero downtime)
- Validated both sites: green padlock + cBioPortal dashboard + OMERO welcome page

**Cert Details:**
- Path: /etc/letsencrypt/live/omero.wehi-rcp.cloud.edu.au-0001/
- Expires: 2026-04-24
- Method: certbot webroot via nginx ACME challenge
