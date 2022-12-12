#!/bin/bash
host=10.5.5.11 	#Change traget IP
for port in {1..65535}; do #All ports
timeout .1 bash -c "echo >/dev/tcp/$host/$port" &&
echo "port $port is open"
done
echo "Done"
