# ESP8266 - WiFi Range Extender

This Arduino project extends your WiFi range and includes a JSON API for control or diagnostics.

Based on https://github.com/esp8266/Arduino/blob/master/libraries/ESP8266WiFi/examples/RangeExtender-NAPT/RangeExtender-NAPT.ino

Using ESP-12E / ESP-12F / NodeMCU With Arduino IDE

## 🔒 Secure Your Credentials

To avoid committing personal WiFi credentials, we use a `secrets.h` file that is **ignored by Git**.

### Step-by-Step Setup

1. **Clone the Repository**

   ```bash
   git clone https://github.com/martelo11/WiFi-Range-Extender.git
   cd WiFi-Range-Extender
   ```

2. **Create Your `secrets.h` File**

   Run the setup script (first time only):

   ```bash
   ./init_secrets.sh
   ```

   This creates `secrets.h` from the included template `secrets.example.h`.

3. **Edit Your Credentials**

   Open `secrets.h` and set your WiFi details:

   ```cpp
   #define STASSID "YourSSID"
   #define STAPSK  "YourPassword"
   ```

4. **Compile and Upload**

This article will explain how to prepare your Arduino IDE to upload sketches into the ESP8266 microcontroller and connect to an ESP-12E / ESP-12F board over USB.

- http://arduino.esp8266.com/stable/package_esp8266com_index.json
- Install Arduino_JSON in Library Manager
- Open `WifiRangeExtender.ino` in the Arduino IDE and upload it to your board.

## 📁 File Overview

- `WifiRangeExtender.ino` – Main sketch.
- `secrets.example.h` – Template for secrets file.
- `secrets.h` – Your personal credentials (not tracked by Git).
- `init_secrets.sh` – Shell script to auto-generate `secrets.h`.

## 🛡 .gitignore

This repo includes `.gitignore` entries to prevent `secrets.h` from being accidentally committed.

## 📄 License

 LGPL

