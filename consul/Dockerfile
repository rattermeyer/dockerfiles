FROM rattermeyer/alpine:latest

MAINTAINER Richard Attermeyer <richard.attermeyer@gmail.com>

ENV CONSUL_VERSION 0.6.4

RUN  apk add --update ca-certificates \
  && wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip \
  && unzip consul_${CONSUL_VERSION}_linux_amd64.zip \
  && mv consul /bin/ \
  && rm -rf consul_${CONSUL_VERSION}_linux_amd64.zip 
RUN wget -O /tmp/ui.zip https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_web_ui.zip \
  && mkdir -p /ui \
  && cd /ui \
  && unzip /tmp/ui.zip \
  && mv * /ui \
  && rm -rf /tmp/* /var/cache/apk/*

ADD ./config /config/

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp

VOLUME [ "/data" ]

ENTRYPOINT [ "/bin/consul" ]

CMD [ "agent" "-config-dir", "/config"  ]
