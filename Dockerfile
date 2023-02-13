FROM nginx

WORKDIR /usr/share/nginx/html

#COPY . . 
COPY ./DR/index.html ./

#volume /usr/share/nginx/html

#RUN  pip install --no-cache-dir -r requirements.txt
#RUN docker build -t nginx

#CMD [ "python", "test.py" ]