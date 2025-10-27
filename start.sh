#!/bin/bash
echo "Applying sysctl settings..."
sysctl -p

echo "Starting basic firewall rules..."
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

echo "Container ready. Use docker exec to test."
tail -f /dev/null

