#!/system/xbin/ash
df
cd /data/local/tmp || { echo "Cannot access /data/local/tmp"; exit; }
curl --insecure --progress-bar -O "https://pg3d-hax.uk/downloads/apks/Magic-Dosbox-Free_v1.0.82.apk" 2>&1
chmod -R 777 /data/local/tmp
pm install Magic-Dosbox-Free_v1.0.82.apk
am start -n bruenor.magicbox.free/.uiGameStarterActivity
rm -f Magic-Dosbox-Free_v1.0.82.apk