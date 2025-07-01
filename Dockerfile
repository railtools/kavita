# Dockerfile
FROM lscr.io/linuxserver/kavita:latest

# Set default timezone
ENV TZ=UTC

# Expose port
EXPOSE 5000

# Single volume for everything under /config (LinuxServer.io standard)
VOLUME ["/config"]

# Ensure proper permissions for the config directory
USER root
RUN chown -R 1000:1000 /config
USER 1000
