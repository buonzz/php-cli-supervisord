FROM buonzz/php-production-cli:latest

LABEL maintainer Darwin Biler "darwin@buonzz.com"

RUN apt-get install supervisor -y --force-yes