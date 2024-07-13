#!/bin/bash

# Start Redis server
redis-server /appl/redis-haproxy/redis/redis.conf &

# # Start HAProxy
# haproxy -f /appl/redis-haproxy/haproxy/haproxy.cfg &