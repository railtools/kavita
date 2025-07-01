# Dockerfile
FROM jvmilazz0/kavita:latest

# Set default timezone
ENV TZ=UTC

# Create an entrypoint script that ensures directories exist
RUN echo '#!/bin/bash\n\
mkdir -p /kavita/config /kavita/manga /kavita/comics /kavita/books\n\
chown -R 1000:1000 /kavita\n\
exec "$@"' > /entrypoint.sh && \
chmod +x /entrypoint.sh

# Use our entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Expose port
EXPOSE 5000
