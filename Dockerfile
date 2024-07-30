# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy static website files to the NGINX web root
COPY . /usr/share/nginx/html

# Expose port 3001 (internal container port)
EXPOSE 3001

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
