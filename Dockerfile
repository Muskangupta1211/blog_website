# Use official nginx image
FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your static files to nginx's web directory
COPY . /usr/share/nginx/html

# Expose default port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
