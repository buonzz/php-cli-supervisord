FROM buonzz/php-production-cli:latest

LABEL maintainer Darwin Biler "darwin@buonzz.com"

RUN apt-get install supervisor -y \
	&& systemctl enable supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]