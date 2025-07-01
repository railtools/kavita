# Dockerfile
FROM jvmilazz0/kavita:latest

# Expose the port that Kavita runs on
EXPOSE 5000

# Set default timezone (can be overridden with Railway environment variable)
ENV TZ=UTC

# Single volume for everything under /kavita
VOLUME ["/kavita"]

# Ensure proper permissions for the kavita directory
USER root
RUN chown -R 1000:1000 /kavita
USER 1000
