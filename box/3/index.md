---
title: Bicycle commuter challenge
lang: en
layout: generic
---

## The absolute basics: step-by-step

#### **Getting the software platform**

 1. Install the Arduino IDE. [Download here](https://www.arduino.cc/en/Main/Software)
 1. (If you're on Mac) Install the driver for the FTDI (USB to UART adapter) [Download here](http://www.silabs.com/products/mcu/pages/usbtouartbridgevcpdrivers.aspx)
 1. Configure Arduino IDE:
    1. Select board: `Tools` > `Board: ..` > `Arduino Pro or Pro Mini`
    1. Select board variant: `Tools` > `Processor: ..` > `ATMega328 (3.3V, 8 Mhz)`
    1. Select port: `Tools` > `Port` > (USB port name)
    1. Install `RN2483` library: [Follow instructions here](https://github.com/jpmeijers/RN2483-Arduino-Library).
    1. Install `SoftwareSerial` library from the Library Manager.

#### **Getting the hardware ready**

 1. Solder headers to the Arduino. [Check here for more details](https://github.com/rac2030/HackDarmstadt/wiki/Getting-started-with-the-Arduino-Pro-Mini#soldering-headers-to-the-arduino)
 1. On the back of the FTDI (USB to UART brige), cut the 5V trace and solder the 3V3 jumpers. [Check this detailed photo](../../assets/images/how-to-prepare-ftdi.jpg).
 1. Connect FTDI (USB to UART brige) to the Arduino Pro Mini. The connections [should look like this](../../assets/images/how-to-connect.jpg).
 1. Plug the Arduino Pro Mini and the RN2483 into the breadboard.
 1. **Make sure you have the LoRaWAN antenna connected!**

#### **Wiring**

**Arduino Pro Mini** | **RN2483**
---------------------|-----------
pin 2                | RST
pin 7                | TX
pin 8                | RX
VCC                  | 3V3
GND                  | GND

![Final result](https://c1.staticflickr.com/1/288/32578575726_22f9d2c1e4_z.jpg "Final result, photo by @tamberg, CC-BY-SA 2.0")

#### **Apps and Devices on TTN**

 1. Create a TTN account if you haven't done so already.
 1. Log in to the [TTN Console](https://console.thethingsnetwork.org).
 1. Go to `Applications`, and `add application` (if you don't have one already)
    1. Give it a descriptive name on the `Application ID` field.
    1. Leave the default handler `ttn-handler-eu`
    1. Click `add application`
 1. Go to your application to register a new device:
    1. Click on `Devices` tab and `register device`
    1. Give it a descriptive name on the `Device ID` field.
    1. Click the little cross-arrows icon on `Device EUI` to generate one.
    1. Click `Register`
    1. On your newly registered device, click on `Settings`.
    1. Change activation mode to `ABP`.
    1. **Un-check** the `Frame Counter Checks` option.
    1. Go to the `Overview` tab and copy the code on the `EXAMPLE CODE` area.

#### **Finally! Arduino coding!**

 1. Copy this example sketch: [basic.ino](../../start/basic.ino)
 1. Paste the code you copied from the `EXAMPLE CODE` in TTN Console, and replace the zero'ed ones in the example.
 1. Compile and upload.
 1. Data should start popping up in the TTN Console!
 1. **Cry tears of joy!**


<a name="whats-in-the-box"></a>

## What's in the box?

### Base platform

 * Arduino Pro Mini 3.3V 8Mhz [Datasheet](https://www.arduino.cc/en/Main/arduinoBoardProMini), [Getting started](https://www.arduino.cc/en/Main/arduinoBoardProMini)
 * FTDI (USB to UART brige) [HOWTO Video](https://www.youtube.com/watch?v=-Myj5yQvI_4)
 * Microchip RN2483 LoRaWAN modem [Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/50002346B.pdf)
 * Breadboard power supply [Datasheet](https://hobbyking.com/media/file/403178644X1017066X57.pdf), [How to use](https://www.sunfounder.com/wiki/index.php?title=How_to_use_YwRobot_Power_Supply_Properly)

[![Arduino Pro Mini pinout](../../assets/images/arduino-pinout.png "Arduino Pro Mini pinout")](../../assets/images/arduino-pinout-large.png)

Tutorials and lots of info specific for this event is popping up in [rac2030's github repo](https://github.com/rac2030/HackDarmstadt/wiki#tutorials-or-logs).

### Sensors

 * HRLV-MaxSonar EZ MB1013 Ultrasonic Range Finder [Datasheet](http://www.maxbotix.com/documents/HRLV-MaxSonar-EZ_Datasheet.pdf)
 * HC-SR501 Passive Infrared Sensor (PIR) [Tutorial](http://henrysbench.capnfatz.com/henrys-bench/arduino-sensors-and-input/arduino-hc-sr501-motion-sensor-tutorial/) - [3v usage](https://www.mysensors.org/build/motion)
 * TCRT5000 Infrared Reflective Barrier [Datasheet](http://www.haoyuelectronics.com/Attachment/TCRT5000/tcrt5000.pdf), [Module](http://www.hotmcu.com/ir-reflective-sensor-tcrt5000-p-184.html)


### Basic resources

 * LoRaWAN & The Things Network:
    * [Documentation](https://www.thethingsnetwork.org/docs/)
    * [Arduino devices](https://www.thethingsnetwork.org/docs/devices/arduino/)
    * [Forum](https://www.thethingsnetwork.org/forum/)
 * Hackathon community platform:
    * [Hackathon projects](https://now.hackdarmstadt.de)
    * [Slack team](https://ttn-ch.slack.com/) (sign up here [here](https://ttn-ch.herokuapp.com/))
 * Various posts/articles:
    * [How to build your first TTN node](https://www.thethingsnetwork.org/forum/t/how-to-build-your-first-ttn-node-arduino-rn2483/1574)
    * [Building a TTN LoRaWAN node](https://www.vdsar.net/build-ttn-lora-node/)

### Additional resources

 * [Open Data, Hourly pedestrian and bicycle counters](https://data.darmstadt.de/dataset/verkehrszaehlungen-werte-fussgaenger-velo)
 * [Conducting Bicycle and Pedestrian Counts: Los Angeles County Manual](http://media.metro.net/projects_studies/call_projects/images/metroscag_bikepedcounttrainingmanual.pdf)
 * [Bike counters for Berlin](http://www.stadtentwicklung.berlin.de/verkehr/lenkung/vlb/de/radzaehlungen.shtml)

> **NOTE:** Please keep in mind the voltage differences between the microcontroller and the different sensors when connecting them.

## Are you stuck?

 1. Ask on our [Slack team](https://ttn-ch.slack.com/)! (sign up here [here](https://ttn-ch.herokuapp.com/)).
 1. Check [this cool wiki being developed by Hackathon participants](https://github.com/rac2030/HackDarmstadt/wiki).
 1. Join us at the MechArtLab everyday between 16:00 and 22:00.
