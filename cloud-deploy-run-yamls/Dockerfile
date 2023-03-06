FROM nginx:latest
MAINTAINER varsha
RUN apt-get update -y &&\
    apt-get install nano -y
COPY /cloud-deploy-run-yamls/index.html ./usr/share/nginx/html
EXPOSE 80
