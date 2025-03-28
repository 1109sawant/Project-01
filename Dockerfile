# This is base Image
FROM ubuntu:latest
 # Install Nginx
 RUN apt update && \
     apt install -y nginx && \
     apt clean && rm -rf /var/lib/apt/lists/*

# Copy index.html to nginx dirctory
COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off"]

 