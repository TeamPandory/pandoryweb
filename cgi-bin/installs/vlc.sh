#!/system/xbin/ash
df
cd /data/local/tmp || { echo "Cannot access /data/local/tmp"; exit; }
curl --insecure --progress-bar -O "https://mirror.netcologne.de/videolan.org/vlc-android/3.3.4/VLC-Android-3.3.4-armeabi-v7a.apk" 2>&1
chmod -R 777 /data/local/tmp
pm install VLC-Android-3.3.4-armeabi-v7a.apk
am start -n org.videolan.vlc/.StartActivity
rm -f VLC-Android-3.3.4-armeabi-v7a.apk