#!/system/xbin/ash
df
cd /data/local/tmp || { echo "Cannot access /data/local/tmp"; exit; }
curl --insecure --progress-bar -O "http://flycast-builds.s3.amazonaws.com/android/heads/master-5227259/flycast-debug-5227259.apk" 2>&1
curl --insecure --progress-bar -O "https://pg3d-hax.uk/downloads/pandory-bits/flycast-settings.tgz" 2>&1
curl --insecure --progress-bar -O "https://pg3d-hax.uk/downloads/pandory-bits/flycast-data.tgz" 2>&1
chmod -R 777 /data/local/tmp
pm install flycast-debug-5227259.apk
tar xvf flycast-settings.tgz -C /data/data
chmod -R 777 /data/data/com.flycast.emulator
tar xvf flycast-data.tgz -C /storage/external_storage/sdcard1/
chmod -R 777 /storage/external_storage/sdcard1/flycast
tar xvf flycast-data.tgz -C /storage/external_storage/sda1/
chmod -R 777 /storage/external_storage/sda1/flycast
am start -n com.flycast.emulator/com.reicast.emulator.MainActivity
rm -f flycast-debug-5227259.apk
rm -f flycast-settings.tgz
rm -f flycast-data.tgz
