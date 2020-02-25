FROM nginx:latest
RUN sed -i 's/nginx/bassirou/g' /usr/share/nginx/html/index.html
EXPOSE 80
