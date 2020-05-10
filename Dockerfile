FROM nginx:stable-alpine

LABEL maintainer="Kevin S <github@ikevinshah.com>"

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir /data \
&& wget https://github.com/iKevinShah/localflix/archive/master.zip -P /tmp/ \
&& unzip /tmp/master.zip -d /tmp \
&& mv /tmp/localflix-master/* /data \
&& touch /tmp/ssl.pem /tmp/ssl.key \
&& chown -R nginx:nginx /data \
&& chmod a+rx /data/filesystem_json_creator.sh;

CMD ["/bin/sh","-c","/data/filesystem_json_creator.sh /data/public/videos && nginx -g 'daemon off;'" ];
