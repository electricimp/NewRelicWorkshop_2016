#require "NewRelicInsights.class.nut:1.0.0"

const ACCOUNT_NUMBER = "<YOUR-ACCOUNT-NUMBER-HERE>";
const API_KEY = "<YOUR-API-KEY-HERE>";

insights <- NewRelicInsights(ACCOUNT_NUMBER, API_KEY);

// Asynchronous request
device.on("envlog", function(data) {

    local insightsData = {
        "ts" : time(),
        "devId" : data.devId,
        "temp" : data.temp
        "humid" : data.humid
    };

    server.log("--- envData ---");
    server.log("ts: " + insightsData.ts);
    server.log("devId: " + insightsData.devId);
    server.log("temp: " + insightsData.temp);
    server.log("humid: " + insightsData.humid);

    // Send asynchronously
    insights.sendEvent("envData", insightsData, function(err, result) {
        // If there was an issue, report it
        if (err != null) {
            server.error(err);
            return;
        }

        // Otherwise, log success
        // server.log("Success");
    });
});

device.on("applog", function(data) {

    local insightsData = {
        "ts" : time(),
        "devId" : data.devId,
        "lightLevel" : data.lightLevel
        "freeMem" : data.freeMem
        "wifiSignal" : data.wifiSignal
        "rtt" : data.rtt
    };

    server.log("*** appData ***");
    server.log("ts: " + insightsData.ts);
    server.log("devId: " + insightsData.devId);
    server.log("lightLevel: " + insightsData.lightLevel);
    server.log("freeMem: " + insightsData.freeMem);
    server.log("wifiSignal: " + insightsData.wifiSignal);
    server.log("rtt: " + insightsData.rtt);

    // Send asynchronously
    insights.sendEvent("appData", insightsData, function(err, result) {
        // If there was an issue, report it
        if (err != null) {
            server.error(err);
            return;
        }

        // Otherwise, log success
        // server.log("Success");
    });

})

device.on("ping", function(data) {
    device.send("pong", 0);
})