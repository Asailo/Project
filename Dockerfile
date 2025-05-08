FROM ubuntu:latest
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt-get update && apt-get install -y nginx
COPY 2127_little_fashion /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
