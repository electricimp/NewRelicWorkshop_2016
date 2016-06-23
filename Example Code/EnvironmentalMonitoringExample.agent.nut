#require "NewRelicInsights.class.nut:1.0.0"

const ACCOUNT_NUMBER = "<YOUR-ACCOUNT-NUMBER-HERE>";
const API_KEY = "<YOUR-API-KEY-HERE>";

insights <- NewRelicInsights(ACCOUNT_NUMBER, API_KEY);

// Asynchronous request
device.on("envlog", function(data) {

    local insightsData = {
        "ts" : time(),
        "devId" : data.devId,
        "temp" : data.temp,
        "humid" : data.humid,
        "lightLevel" : data.lightLevel
    };

    server.log("--- envData ---");
    server.log("ts: " + insightsData.ts);
    server.log("devId: " + insightsData.devId);
    server.log("temp: " + insightsData.temp);
    server.log("humid: " + insightsData.humid);
    server.log("light: " + insightsData.lightLevel);

    // Send asynchronously
    insights.sendEvent("envData", insightsData, function(err, result) {
        // If there was an issue, report it
        if (err != null) {
            server.error(err);
            return;
        }
    });
});