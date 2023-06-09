# Use the official Nginx base image
FROM nginx:perl

# Copy custom HTML file with custom message
COPY custom_message.html /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
