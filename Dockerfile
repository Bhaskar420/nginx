##e the official Nginx image as a base
FROM nginx:latest

# Copy your static files to the Nginx HTML directory
COPY ./  /usr/share/nginx/html

# Optionally expose the port
EXPOSE 80
