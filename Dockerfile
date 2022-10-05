FROM ohdsi/atlas:latest

USER root
COPY nginx-default.conf  /etc/nginx/conf.d/default.conf
COPY entrypoint.sh ./entrypoint.sh

RUN chmod +x ./entrypoint.sh && \
    chown nginx:root ./entrypoint.sh

USER $UID
CMD ["/bin/sh", "-c", "./entrypoint.sh"]
