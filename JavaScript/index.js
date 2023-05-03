const RPC = require('discord-rpc');
const rpc = new RPC.Client({
    transport: "ipc"
});

rpc.on("ready", () => {
    rpc.setActivity({
        details: "Talk about tech and education!",
        startTimestamp: new Date(),
        largeImageKey: "dit",
        largeImageText: "Join the Discord Institute of Technology!",
                buttons: [
            { label: "Join D.I.T!", url: "https://discord.gg/3e5M59hP3T" },
            { label: "Use this RPC yourself!", url: "https://github.com/Xytrux/DIT-RPC" }
        ]
    });
    console.log("RPC Connected");
})

rpc.login({
    clientId: "1103349211531063368"
})