import sys
import socket
import getopt
import threading
import subprocess

listen = False
command = False
upload = False
execute = ""
target = ""
upload_destination = ""
port = 0

# Im pushing 2020 03 29 / why do not commit this??? Fuck Kali Linux Timezone ...
