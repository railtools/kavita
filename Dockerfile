# Dockerfile
FROM jvmilazz0/kavita:latest

# Expose the port that Kavita runs on
EXPOSE 5000

# Set default timezone (can be overridden with Railway environment variable)
ENV TZ=UTC

# Create volume mount points
VOLUME ["/kavita/config", "/manga", "/comics", "/books"]

# Kavita runs as non-root user, so we need to ensure permissions
USER root
RUN mkdir -p /kavita/config /manga /comics /books && \
    chown -R 1000:1000 /kavita/config /manga /comics /books
USER 1000
