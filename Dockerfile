FROM progrium/busybox
MAINTAINER Gerred Dillon <hello@gerred.com>
RUN opkg-install ca-certificates
RUN for cert in `ls -1 /etc/ssl/certs/*.crt | grep -v /etc/ssl/certs/ca-certificates.crt`; do cat "$cert" >> /etc/ssl/certs/ca-certificates.crt; done
