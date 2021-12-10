FROM alpine:3.15.0
LABEL stunnel_version="5.60"
RUN apk add --no-cache \
    ca-certificates \
    gettext \
    stunnel
RUN mkdir -p /etc/stunnel/config /etc/stunnel/pki
ADD stunnel.conf /etc/stunnel/config/config
ADD launch.sh /opt/launch.sh

RUN chown -R 1001:0 /etc/stunnel /opt/launch.sh && \
    chmod -R g+rw /etc/stunnel && \
    chmod ug+rwx /opt/launch.sh
    
USER 1001
EXPOSE 5000

CMD [ "sh", "-c", "/opt/launch.sh" ]