FROM rattermeyer/alpine:latest

MAINTAINER Richard Attermeyer <richard.attermeyer@gmail.com>

ENV VAULT_VERSION 0.6.0

RUN  apk add --update ca-certificates \
  && wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip \
  && unzip vault_${VAULT_VERSION}_linux_amd64.zip \
  && mv vault /bin/ \
  && rm -rf vault_${VAULT_VERSION}_linux_amd64.zip \
  && rm -rf /tmp/* /var/cache/apk/*

COPY ./config /config/

EXPOSE 8200 8125

VOLUME [ "/data" ]

CMD [ "vault", "server", "-config", "/config/vault.json" ]
