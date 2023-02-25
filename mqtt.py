import paho.mqtt.client as mqtt
from paho.mqtt.client import connack_string as ack
from datetime import datetime as dt
import ssl

def on_connect(client, userdata, flags, rc, v5config=None):
    print(dt.now().strftime("%H:%M:%S.%f")[:-2] + " Connection returned result: "+ack(rc))
    client.subscribe('joe/test',0);

def on_message(client, userdata, message,tmp=None):
    print(dt.now().strftime("%H:%M:%S.%f")[:-2] + " Received message " + str(message.payload) + " on topic '"
        + message.topic + "' with QoS " + str(message.qos))

def on_publish(client, userdata, mid,tmp=None):
    print(dt.now().strftime("%H:%M:%S.%f")[:-2] + " Published message id: "+str(mid))
    
def on_subscribe(client, userdata, mid, qos,tmp=None):
    if isinstance(qos, list):
        qos_msg = str(qos[0])
    else:
        qos_msg = f"and granted QoS {qos[0]}"
    print(dt.now().strftime("%H:%M:%S.%f")[:-2] + " Subscribed " + qos_msg)    

userdata = {
    'client_id':'desktop'
}
client = mqtt.Client()

client.on_connect = on_connect;
client.on_message = on_message;
client.on_publish = on_publish;
client.on_subscribe = on_subscribe;

# client.username_pw_set("ydwsvhca", "majOBrcrW64E")
client.tls_set(
    ca_certs='ca1.pem',
    certfile='desktop.cert.pem',
    keyfile='desktop.private.key',
    cert_reqs=ssl.CERT_REQUIRED,
    tls_version=ssl.PROTOCOL_TLSv1_2, ciphers=None)

client.connect('a1a5le6m4i6lho-ats.iot.us-east-2.amazonaws.com',port=8883,keepalive=60);
client.loop_forever();
# client.loop();