#!/system/xbin/ash
df
cd /data/local/tmp || { echo "Cannot access /data/local/tmp"; exit; }
curl --insecure --progress-bar -O "https://www.ppsspp.org/files/1_11_3/ppsspp.apk" 2>&1
chmod -R 777 /data/local/tmp
pm install ppsspp.apk
am start -n org.ppsspp.ppsspp/.PpssppActivity
rm -f ppsspp.apk