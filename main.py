from pypresence import Presence 
import time

start = int(time.time())
client_id = "1103349211531063368" # put your client ID here
RPC = Presence(client_id)
RPC.connect()
print("RPC Connected!")

while True:
    RPC.update(
        large_image = "dit",
        large_text = "Join the Discord Institute of Technology!",
        #small_image = "",
        #small_text = "",
        details = "Talk about tech and education!",
        #state = "",
        start = start,
        buttons = [{"label": "Join D.I.T!", "url": "https://discord.gg/3e5M59hP3T"}, {"label": "Use this RPC yourself!", "url": "https://github.com/Xytrux/DIT-RPC"}]
    )
    time.sleep(60)