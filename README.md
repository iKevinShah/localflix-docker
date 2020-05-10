# localFlix-docker

Image for running localflix (https://github.com/iKevinShah/localflix) on a container.


The image is based out of nginx (alpine based). It fetches latest zip from github repo and starts an nginx. 

Public directory : /data/public

Videos directory : /data/public/videos

Pull the image: 

`docker push ikevinshah/localflix:latest`

Running the instance : 

`docker run -dit --hostname simple_localflix --name simple_localflix--publish 80:80 --volume /path/to/videos/:/data/public/videos:ro simple_localflix`

OR if you want to run with a custon nginx conf file


`docker run -dit --hostname simple_localflix --name simple_localflix--publish 80:80 --volume /path/to/videos/:/data/public/videos:ro  /path/to/nginx.conf:/etc/nginx/nginx.conf:ro simple_localflix`

Access via http://ip_or_fqdn :)
