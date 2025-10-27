FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y iproute2 iptables net-tools iputils-ping

# Enable IPv4 forwarding
RUN echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
