#!/bin/ash

if [ ! -f /etc/stunnel/pki/cert.pem ]; then
    openssl genrsa -out /etc/stunnel/pki/key.pem 2048
    openssl req -new -x509 -key /etc/stunnel/pki/key.pem -out /etc/stunnel/pki/cert.pem -days 1095 -subj "/C=XX/CN=stunnel-server"
fi

stunnel /etc/stunnel/config/stunnel.conf