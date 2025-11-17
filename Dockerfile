# Use a small nginx web server image
FROM nginx:alpine

# Copy our index.html into the default nginx html folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (inside the container)
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
