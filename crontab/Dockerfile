FROM alpine

#Copy files
COPY crontab.prod /crontab.prod
COPY start.sh /start.sh
COPY syncdirs.sh /syncdirs.sh

#Install Packages
RUN apk update
RUN apk add rsync

CMD ["sh", "/start.sh"]
