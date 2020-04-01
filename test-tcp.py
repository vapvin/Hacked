# test in vmware server tcp

#!/usr/bin/python
#-*- coding: utf-8 -*-

import socket
import threading

in_ip = "0.0.0.0"
in_port = 9999

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server.bind(in_ip, in_port)

server.listen(5)

print "Listening on Port %d, ip: %s" % (in_port, in_ip)