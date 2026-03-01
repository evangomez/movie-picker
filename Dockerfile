# Use nginx to serve the static HTML file — lightweight and fast
FROM nginx:alpine

# Copy the app into nginx's default web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (Fly.io routes traffic here)
EXPOSE 80
