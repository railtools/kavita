FROM jvmilazz0/kavita:latest

ENV TZ=UTC

USER root
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 5000
