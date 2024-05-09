# Use NGINX as the base image
FROM nginx:alpine

# Copy the static files to the NGINX html directory
COPY . /usr/share/nginx/html


# Expose port 80
EXPOSE 80

# Command to start NGINX
CMD ["nginx", "-g", "daemon off;"]
