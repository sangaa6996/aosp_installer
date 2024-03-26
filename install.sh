# adb connect 172.27.1.137
adb remount
adb push fhubservice.rc /etc/init/
adb push fhub /
adb shell chmod 777 fhub/fhub.sh
adb install app-release.apk
adb shell reboot
