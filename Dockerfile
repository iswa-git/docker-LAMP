FROM php:7.3-apache

WORKDIR /var/www/html

COPY . . 

volume ./DR:/var/www/html

#RUN  pip install --no-cache-dir -r requirements.txt

#CMD [ "python", "test.py" ]