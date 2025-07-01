# Dockerfile
FROM jvmilazz0/kavita:latest

# Set default timezone
ENV TZ=UTC

# Expose port
EXPOSE 5000

# Single volume for everything under /kavita
VOLUME ["/kavita"]
