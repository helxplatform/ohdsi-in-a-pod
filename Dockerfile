FROM ohdsi/atlas:latest

COPY --chown=101 config-local.js /usr/share/nginx/html/atlas/js/config-local.js
COPY nginx-default.conf  /etc/nginx/conf.d/default.conf
