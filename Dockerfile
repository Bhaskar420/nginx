FROM nginx:alpine

# Create the directory and set permissions
RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R nginx:nginx /var/cache/nginx

# Copy your static files to the Nginx HTML directory
COPY ./  /usr/share/nginx/html

# Optional: Expose ports
EXPOSE 80

