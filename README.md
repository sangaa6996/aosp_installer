# REQUIREMENT

- Platform: aosp run on orange pi 3 LTS
- Download [Phoenixcard](https://drive.google.com/drive/folders/1ui3vkKAu7Nl-iJuFJqJG2kJVB4CAzN8N)
- Download [Android Image](https://drive.google.com/drive/folders/1GPYZedwITu3139VuEBgnMDsKReyw3ZCs)

# SETUP

## 1.Burn android image to OrangePi

![alt text](media/image-1.png)

- Open PhoenixCard application on Windows
- Chosse android image downloaded before
- Choose "Start up" mode
- Click "Burn"

## 2.Power up OrangePi

Open folder in linux (or VM, wsl)
Find orange pi ip address  
Connect to orange pi using adb (adb is avalabled on ubuntu)

```sh
adb connect 172.27.1.209:5555
```

![alt text](media/image-2.png)

List connected devices

```sh
adb devices -l
```

![alt text](media/image-3.png)

## 3.Install apk

Move \*.apk file to this folder, like this

```
aosp_app_installer
├── fhub
│   └── fhub.sh
├── .gitignore
├── app-release.apk
├── fhubservice.rc
├── install.sh
└── README.md
```

Run script to install

```sh
./install.sh
```

![alt text](media/image-4.png)

Done! Waiting orangepi to reboot  
To reinstall app, connect and run install.sh again

## 4.Clone drive

If you have aosp and apk install on an sd card, you could clone that disk to another disk using [Balena Etcher](https://etcher.balena.io/) and don't need to follow three steps above

# Cheat Sheet

Connect over ip address

```sh
adb connect <ip address>:5555
```

Install package using apk

```sh
adb install app-release.apk
```

Uninstall package

```sh
adb uninstall com.example.exoplayer
```

**Note:** all command below run inside android, add "adb shell" to run in ubuntu, ex:
| android| ubuntu|
|:---|:---|
|cat /proc/cpuinfo|adb shell cat /proc/cpuinfo|

Shutdown

```sh
reboot -p
```

Reboot

```sh
reboot
```

System monitor

```sh
top -o %MEM -o %CPU -o ARGS -s 1 -m 20
```

Show cpu info

```sh
cat /proc/cpuinfo
```

Show ram usage

```sh
free -h
```

Show temperature

```sh
cat /sys/class/thermal/thermal_zone0/temp
cat /sys/class/thermal/thermal_zone1/temp
```

**Tips**: To find package, type "adb uninstall" and push "tab" twice on keyboard
