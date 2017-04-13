---
title: The absolute basics
lang: en
layout: generic
---

## Step-by-step guide

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


## And now?

Now check what's in your hardware box:

  * [Groundwater meter challenge](/box/1#whats-in-the-box)
  * [Nightlife noise challenge](/box/2#whats-in-the-box)
  * [Bicycle commuter challenge](/box/3#whats-in-the-box)
  * [Bicycle tracking challenge](/box/4#whats-in-the-box)
  * [Environmental exploration challenge](/box/5#whats-in-the-box)
  * [City gardens challenge](/box/6#whats-in-the-box)
  * [Open challenge](/box/7#whats-in-the-box)
