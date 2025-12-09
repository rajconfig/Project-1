FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY food/ /usr/share/nginx/html/

EXPOSE 80
