FROM scratch

ADD smart-gateway /
ADD https://raw.githubusercontent.com/signalfx/gateway/master/ca-bundle.crt /etc/pki/tls/certs/ca-bundle.crt

VOLUME /var/lib/gateway
CMD ["/smart-gateway", "-configfile", "/var/lib/gateway/etc/gateway.conf"]
