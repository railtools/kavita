FROM jvmilazz0/kavita:latest

ENV TZ=UTC

# Optional: set permissions just in case
USER root
RUN mkdir -p /config && chown -R 1000:1000 /config
USER 1000

EXPOSE 5000
