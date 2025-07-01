# Dockerfile
FROM jvmilazz0/kavita:latest

# Set default timezone
ENV TZ=UTC

# Create the necessary directories for Kavita
USER root
RUN mkdir -p /kavita/config /kavita/manga /kavita/comics /kavita/books && \
    chown -R 1000:1000 /kavita
USER 1000

# Expose port
EXPOSE 5000
