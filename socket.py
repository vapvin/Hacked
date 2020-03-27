#!/usr/bin/python
# -*- coding: utf-8 -*-

import socket

target_host = "www.google.com"

target_port = 80

# 소켓 객체생성

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# 클라이언트 연결

client.connect((target_host, target_port))

# 데이터 전송

client.send("GET / HTTP/1.1\r\nHost: google.com\r\n\r\n")

# 데이터 수신

response = client.recv(4096)

print(response)
