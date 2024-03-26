adb install .\app-release.apk
adb remount
adb shell
mkdir fhub
cd fhub/
touch fhub.sh
echo "monkey -p com.example.exoplayer -v 5" > fhub.sh
exit

adb push <path.of.fhubservice.rc> /etc/init/ 