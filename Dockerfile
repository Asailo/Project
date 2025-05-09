FROM ubuntu:20.04

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nginx curl vim sudo
RUN apt-get update -y && apt-get upgrade -y
RUN rm -rf /var/lib/apt/lists/*
COPY 2127_little_fashion /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
