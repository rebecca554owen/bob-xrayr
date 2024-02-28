FROM alpine:latest
RUN RUN apk add --no-cache \
    unzip \
    && mkdir /etc/XrayR/ \
    && wget -q -N --no-check-certificate -O /etc/XrayR/XrayR-linux.zip https://github.com/BobCoderS9/XrayR-release/releases/download/0.9.2/XrayR-linux-64.zip
    && unzip XrayR-linux.zip \
    && rm XrayR-linux.zip -f \
    && chmod +x XrayR

WORKDIR /etc/XrayR
ENTRYPOINT [ "XrayR", "--config", "/etc/XrayR/config.yml"]
