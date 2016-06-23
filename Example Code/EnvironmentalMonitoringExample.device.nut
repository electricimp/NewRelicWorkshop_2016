#require "Si702x.class.nut:1.0.0"

devId <- hardware.getdeviceid();

// Initialize I2C and sensor
hardware.i2c89.configure(CLOCK_SPEED_400_KHZ);
tempHumid <- Si702x(hardware.i2c89);

// Configure LED
ledPin <- hardware.pin2;
ledPin.configure(DIGITAL_OUT, 0);

// Heartbeat blink
function blinkHeartbeat() {
    ledPin.write(1);
    imp.sleep(0.5);
    ledPin.write(0);
}

// Periodically get env data
function logEnvData() {
    imp.wakeup(1, logEnvData); // schedule next call

    tempHumid.read(function(result) {
        if ("err" in result) {
            server.error(result.err);
            return;
        }

        blinkHeartbeat();

        //******************* logging **********************
        local envLogData = {};
        envLogData.devId <- devId;
        envLogData.temp <- format("%.1f", result.temperature).tofloat();
        envLogData.humid <- format("%.0f", result.humidity).tofloat();
        envLogData.lightLevel <- hardware.lightlevel();
        server.log("temp: " + envLogData.temp + "C, humid: " + envLogData.humid + "%, light: " + envLogData.lightLevel);

        // Send message to agent
        agent.send("envlog", envLogData);

    });

}

// Now bootstrap the loop
imp.wakeup(2, logEnvData);