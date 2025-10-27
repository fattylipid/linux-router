# Linux Router Lab
This project demonstrates how a Linux system can act as a simple router and firewall using Docker. It uses Ubuntu 24.04 as the base image and configures IP forwarding and NAT with iptables.

## Build your container
```bash
docker build -t linux-router .
```

## Give the container permission to modify interfaces and firewall rules
```bash
docker run --cap-add=NET_ADMIN -it linux-router
```
![Container Running](/screenshots/dockerhub_container.png?raw=true)

## Enter the container's shell
```bash
docker exec -it linux-router bash
```

## Verify IPv4 forwarding
```bash
sysctl net.ipv4.ip_forward
```
* This should return 1.

![IPv4 Forwarding](/screenshots/ipv4_forwarding.png?raw=true)

## View firewall/NAT rules
```bash
iptables -t nat -L -v
```
![IP Tables](/screenshots/iptables.png?raw=true)

## Verify networking tools
```bash
ip addr
```
* This will view your container's interfaces.

![Interfaces](/screenshots/ip_addr.png?raw=true)

## Verify connectivity
```bash
ping -c 3 8.8.8.8
```
* If you get a response, it means your container works.

![Ping](/screenshots/ping.png?raw=true)

## Sources
* Snipe-IT GitHub
* Stack Overflow
* ChatGPT