# Wordpress Backup
FROM resin/rpi-raspbian
MAINTAINER waog <hello@waog.com>

# make wordpress and the webcontent volumes
VOLUME ["/backup"]

COPY ./restore.sh /

CMD ["/restore.sh"]
