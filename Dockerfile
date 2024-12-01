FROM ubuntu:latest
RUN mkdir /app
WORKDIR /app
RUN apt update -y 
RUN apt install -y wget
RUN wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.0/hysteria-linux-386
RUN chmod +x hysteria-linux-386
RUN mv hysteria-linux-386 hysteria
RUN mkdir -p /etc/hysteria
ENV TZ=Asia/Shanghai
CMD [ "/app/hysteria", "client", "-c", "/etc/hysteria/client.yaml" ] 