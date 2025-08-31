# Use a lightweight Python base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

RUN chmod 777 /app
# Install the autoremove-torrents package
RUN pip install --no-cache-dir autoremove-torrents
# This is therrible, but does the job for now.
# Make the package directory writable to allow runtime file generation
RUN chmod -R 777 /usr/local/lib/python3.12/site-packages/autoremovetorrents

# Copy the entrypoint script into the container
COPY entrypoint.sh /app/entrypoint.sh

# Make the script executable
RUN chmod +x /app/entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/app/entrypoint.sh"]