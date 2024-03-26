# REQUIREMENT
- Platform: aosp run on orange pi 3 LTS
- Download [Phoenixcard](https://drive.google.com/drive/folders/1ui3vkKAu7Nl-iJuFJqJG2kJVB4CAzN8N)
- Download [Android Image](https://drive.google.com/drive/folders/1GPYZedwITu3139VuEBgnMDsKReyw3ZCs)
# SETUP
## Burn android image to OrangePi
![alt text](image-1.png)
- Open PhoenixCard application on Windows
- Chosse android image downloaded before
- Choose "Start up" mode
- Click "Burn"
## Power up OrangePi
Open folder in linux (or VM, wsl)
Find orange pi ip address
Connect to orange pi using adb (adb is avalabled on ubuntu)
```sh
adb connect 172.27.1.209:5555
```
List connected devices
```sh
adb devices -l
```
## Install apk
Move *.apk file to this folder, like this
```
aosp_app_installer
│   README.md
│   install.sh
│   app-release.apk
│   fhubservice.rc
│
└───fhub
    └───fhub.sh

```
Run script to install
```sh
./install.sh
```
Done! Waiting orangepi to reboot

## Terminal Screenshot
![alt text](image.png)