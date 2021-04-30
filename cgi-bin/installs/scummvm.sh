#!/system/xbin/ash
df
cd /data/local/tmp || { echo "Cannot access /data/local/tmp"; exit; }
curl --insecure --progress-bar -O "https://downloads.scummvm.org/frs/scummvm/2.2.0/scummvm-2.2.1-android-arm-v7a-251020-1355.apk" 2>&1
chmod -R 777 /data/local/tmp
pm install scummvm-2.2.1-android-arm-v7a-251020-1355.apk
monkey -p org.scummvm.scummvm 1
rm -f scummvm-2.2.1-android-arm-v7a-251020-1355.apk