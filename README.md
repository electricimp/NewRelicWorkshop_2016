# New Relic Workshop

Use the instructions below to send data from an Electric Imp Device to the New Relic Insights Platform.

## Getting Started

### What you need:

- [A free Electric Imp developer account](ide.electricimp.com)
- The Electric Imp Phone App
- [A New Relic Insights Account](https://newrelic.com/insights)
  - Account Number
  - API Key
- [An Electric Imp developer kit](https://www.amazon.com/WiFi-Environmental-Sensor-LED-kit/dp/B00ZQ4D1TM/ref=pd_bxgy_23_img_2?ie=UTF8&refRID=YGQMS8GHCQ9EC2C3NV70)
  - Imp001
  - April
  - Env Tail
  - USB cable

### Hardware Setup

- Plug Imp into April breakout board
- Plug Env Tail into April breakout board
- Power the Imp using the USB cable
- BlinkUp Imp

For instructions on BlinkUp click [here](https://electricimp.com/docs/gettingstarted/quickstartguide/) <br>
For information on Connecting Tails click [here](https://electricimp.com/docs/tails/)

### Software Setup

- Log into the Electric Imp IDE using your developer account credentials
- Create a *New Model* and assign device to that model
- Copy and Paste the **Device Monitoring Example Code** found in this repository into your model
- In the Agent Code enter your New Relics Account Number and API key on lines 3 & 4
- Hit *Build and Run*

For indtrucitons on using the Electric Imp IDE click [here](https://electricimp.com/docs/gettingstarted/ide/)

## More Resources

Electric Imp [Dev Center](https://electricimp.com/docs/)
<br>
[New Relic Insights](https://newrelic.com/insights)