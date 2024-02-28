FROM  alpine
# 安装必要的工具包
RUN  apk --update --no-cache add unzip tzdata ca-certificates \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && mkdir /etc/XrayR/
RUN wget -q -N --no-check-certificate -O /etc/XrayR/XrayR-linux.zip https://github.com/BobCoderS9/XrayR-release/releases/download/0.9.2/XrayR-linux-64.zip
    # && unzip /etc/XrayR/XrayR-linux.zip -d /etc/XrayR/ \
    # && rm /etc/XrayR/XrayR-linux.zip -f \
    # && chmod +x /etc/XrayR/XrayR
WORKDIR /etc/XrayR
ENTRYPOINT [ "/etc/XrayR/XrayR", "--config", "/etc/XrayR/config.yml" ]
