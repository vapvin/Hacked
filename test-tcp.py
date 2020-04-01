# test in vmware server tcp

#!/usr/bin/python
# -*- coding: utf-8 -*-

import socket
import threading

in_ip = "0.0.0.0"
in_port = 9999

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server.bind(in_ip, in_port)

server.listen(5)

print "Listening on Port %d, ip: %s" % (in_port, in_ip)


def handle_client(client_socket):

    request = client_socket.recv(1024)
    print "[*] Received %s" % request

    client_socket.send("ACK!")

    client_socket.close()


while True:
    client, addr = server.accept()

    print "[*] Accepted connection from: %s:%d" % (addr[0], addr[1])

    client_handler = threading.Thread(target=handle_client, args=(client,))
    client_handler.start()
