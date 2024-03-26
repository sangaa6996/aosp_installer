# adb connect 172.27.1.137:5555
adb remount
adb push fhubservice.rc /etc/init/
adb push fhub /
adb shell chmod 777 fhub/fhub.sh
adb uninstall com.example.exoplayer
adb install app-release.apk
adb shell reboot
