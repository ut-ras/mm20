import socket
from gui1 import *
import sys
import threading

HEADER = 64
PORT = 65432
SERVER = socket.gethostbyname(socket.gethostname())
ADDR=(SERVER,PORT)
FORMAT = 'utf-8'
DISCONNECT_MESSAGE = '!DISCONNECT'

def send(msg,client):
    message = msg.encode(FORMAT)
    msg_length = len(message)
    send_length = str(msg_length).encode(FORMAT)
    send_length += b' ' * (HEADER - len(send_length))
    client.send(send_length)
    client.send(message)

    print(client.recv(HEADER).decode(FORMAT))

def exit():
    app.exec_()
    send(DISCONNECT_MESSAGE,client)


client = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

client.connect(ADDR)

send("HELLO WORLD!",client)
send('hello jack',client)


#livefeed threading
def live_feed(client,addr):
    print('Live feed thread starting')
    connected = True
    while connected:

        received_message = client.recv(HEADER).decode(FORMAT)
        print(received_message)
        if DISCONNECT_MESSAGE in received_message:
            break

        #sending to server
        msg = f'Sent from live feed thread'
        message = msg.encode(FORMAT)
        msg_length = len(message)
        send_length = str(msg_length).encode(FORMAT)
        send_length += b' ' * (HEADER - len(send_length))
        # time.sleep(2)
        client.send(send_length)
        client.send(message)



    print('Live feed thread disconnected')


live_feed_thread = threading.Thread(target = live_feed, args = (client,ADDR))
# live_feed_thread.start()




#gui
app = QtWidgets.QApplication(sys.argv)
MainWindow = QtWidgets.QMainWindow()
ui = Ui_MainWindow(client)
ui.setupUi(MainWindow)
MainWindow.show()


#close window
sys.exit(exit())
