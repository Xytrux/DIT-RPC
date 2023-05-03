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
        buttons = [{"label": "Join D.I.T!", "url": "https://discord.gg/WdRhvcdqhK"}, {"label": "RPC Repository", "url": "https://github.com/Xytrux/DIT-RPC"}]
    )
    time.sleep(60)