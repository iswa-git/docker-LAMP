FROM nginx

WORKDIR /usr/share/nginx/html

#COPY . . 
COPY ./DR/index.html ./
