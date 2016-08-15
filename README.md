# New Relic Workshop

Use the instructions below to send data from an Electric Imp Device to the New Relic Insights Platform.

## Getting Started

### What you need:

- [A free Electric Imp developer account](https://ide.electricimp.com)
- The Electric Imp Phone App ([iOS](https://itunes.apple.com/us/app/electric-imp/id547133856?mt=8)) ([Android](https://play.google.com/store/apps/details?id=com.electricimp.electricimp&hl=en))
- [A New Relic Account with Insights](https://newrelic.com/insights) ([sign up](https://newrelic.com/signup))
  - [Account Number](https://docs.newrelic.com/docs/accounts-partnerships/accounts/account-setup/account-id) https://account.newrelic.com/accounts/ACCOUNT_ID/
  - [Insights Insert API Key](https://docs.newrelic.com/docs/insights/new-relic-insights/adding-querying-data/insert-custom-events-insights-api#register)
- An [Electric Imp developer kit](https://www.amazon.com/Electric-Imp-imp001-dev-kit/dp/B00ZQ45KXM/ref=pd_sim_147_1?ie=UTF8&dpID=41kM280MN1L&dpSrc=sims&preST=_AC_UL160_SR120%2C160_&psc=1&refRID=913B9ACV3PCMFA0YH3DA)
  - Imp001
  - April
  - USB cable
- An Electric Imp Environmental Sensor Tail - currently not for sale, available at the workshop
- WiFi password (at New Relic, connect to NR-GUEST and get the password from an organizer)

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
- Copy and Paste the agent and device code found in the *Example Code* folder into your model
  - There are two code examples in the Example Code folder
    - Challenge 1 - EnvironmentalMonitoringExample
    - Challenge 2 - DeviceMonitoringExample
- In the agent code enter your New Relic Account Number and Insights Insert API key on lines 3 & 4
- Hit *Build and Run*

For instrucitons on using the Electric Imp IDE click [here](https://electricimp.com/docs/gettingstarted/ide/)

## More Resources

Electric Imp [Dev Center](https://electricimp.com/docs/)
<br>
[New Relic Insights](https://newrelic.com/insights)

## License
All example code in this repository is licensed under the [MIT License](./LICENSE).
