FROM nginx:latest

COPY default.conf etc/nginx/conf.d/default.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN mkdir usr/share/nginx/html/pic/

COPY moon.jpg usr/share/nginx/html/pic/moon.jpg

EXPOSE 80

CMD [ "/usr/sbin/nginx" ]
