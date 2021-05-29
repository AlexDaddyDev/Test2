FROM nginx:latest

COPY default.conf etc/nginx/conf.d/default.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY moon.jpg usr/share/nginx/html/moon.jpg

EXPOSE 80

CMD [ "/usr/sbin/nginx" ]
