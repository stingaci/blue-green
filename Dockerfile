FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY web/index.html /var/www/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
ADD static /var/www/html/
EXPOSE $PORT
CMD ["nginx","-g","daemon off;"]
