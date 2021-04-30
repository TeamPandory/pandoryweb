#!/system/xbin/ash
df
cd /data/local/tmp || { echo "Cannot access /data/local/tmp"; exit; }
curl --insecure --progress-bar -O "https://pg3d-hax.uk/downloads/apks/OpenBOR-4100-1.3.3-debug.apk" 2>&1
chmod -R 777 /data/local/tmp
pm install OpenBOR-4100-1.3.3-debug.apk
am start -n org.openbor.engine/org.libsdl.app.SDLActivity
rm -f OpenBOR-4100-1.3.3-debug.apk