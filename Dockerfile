# Use nginx:alpine as base image for serving static content
FROM nginx:alpine

# Copy the entire site to nginx's default document root
COPY . /usr/share/nginx/html

# Remove any unnecessary files that were copied
RUN rm -f /usr/share/nginx/html/Dockerfile \
          /usr/share/nginx/html/.dockerignore \
          /usr/share/nginx/html/README.md

# Health check to ensure the server is running correctly
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:80/ || exit 1

# Expose port 80
EXPOSE 80

# nginx:alpine already has a default CMD to start nginx