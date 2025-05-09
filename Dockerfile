FROM ubuntu:24.04

# Install prerequisites
RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
    ca-certificates \
    lsb-release

# Add official Nginx signing key
RUN curl -fsSL https://nginx.org/keys/nginx_signing.key | apt-key add -

# Add Nginx repository
RUN echo "deb https://nginx.org/packages/ubuntu $(lsb_release -cs) nginx" \
    > /etc/apt/sources.list.d/nginx.list

# Update package lists and install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy website files
COPY 2127_little_fashion /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
