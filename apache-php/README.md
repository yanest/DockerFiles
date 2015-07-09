##Simple Examples

Assuming you have your content at /home/jdoe/mysite/, the below will be sufficient to serve it. Note that many Docker users encourage mounting data from a storage container, rather than directly from the filesyetem.

“It works!”: `docker run -p 80:80 -p 443:443 -d eboraas/apache-php` and browse to the host's IP address using http or https
Serving actual content with SSL support: `docker run -p 80:80 -p 443:443 -v /home/jdoe/mysite/:/var/www/ -d eboraas/apache-php`
… without SSL support: `docker -p 80:80 -v /home/jdoe/mysite/:/var/www/ -d eboraas/apache-php`
… using non-standard ports: docker -p 8080:80 -p 8443:443 -v /home/jdoe/mysite/:/var/www/ -d eboraas/apache-php
