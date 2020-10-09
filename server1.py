import socket
import threading
import random


HEADER = 64
PORT = 65432
SERVER = socket.gethostbyname(socket.gethostname())
ADDR = (SERVER, PORT)
FORMAT = 'utf-8'
DISCONNECT_MESSAGE = '!DISCONNECT'


server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server.bind(ADDR)

def handle_client(conn, addr): #handles client individually (threaded)
    print(f"[NEW CONNECTION] {addr} connected.")

    connected = True
    while connected:
        msg_length = conn.recv(HEADER).decode(FORMAT) #from client
        if msg_length: #if msg_length has something
            msg_length = int(msg_length)
            msg = conn.recv(msg_length).decode(FORMAT)

            if msg == DISCONNECT_MESSAGE:
                connected=False

            print(f'[{addr}] {msg}') #prints what client sent to server


            conn.send(f"[FROM SERVER] {msg} {random.randint(1,10)}".encode(FORMAT))

            #for debugging
            # voltage = random.randint(1,10)
            # conn.send(f'[FROM SERVER] Voltage is now {voltage}'.encode(FORMAT))


    conn.close()


def start():
    server.listen()
    print(f"[LISTENING] Server is listening on {SERVER}")
    while True:
        conn, addr = server.accept()
        thread = threading.Thread(target = handle_client, args = (conn,addr))
        thread.start()
        print(f"[ACTIVE CONNECTIONS] {threading.activeCount()-1}")

if __name__ == '__main__':
    print("[STARTING] server is starting...")
    start()


# def maingui(client):
#     pass
#
# guithread = threading.Thread(target = maingui, args = (client))
# guithread.start()
#
# def livefeed(timeout):
#     pass
#
# livefeedthread = threading.Thread(target = livefeed, args = (timeout))
# livefeedthread.start()
