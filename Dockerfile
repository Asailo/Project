FROM alpine:3.19

RUN apk add --no-cache nginx
COPY 2127_little_fashion /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
