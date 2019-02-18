#!/usr/bin/env python3
import socket
import struct
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect(("127.0.0.1", 7777))
for l in [1000, 1000*1000, 10*1000*1000, 100*1000*1000]:
    data_to_send = b'a' * l
    header = struct.pack(">I", len(data_to_send))
    sock.sendall(header + data_to_send)
sock.close()
