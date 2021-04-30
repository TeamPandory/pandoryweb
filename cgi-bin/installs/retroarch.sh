#!/system/xbin/ash
df
cd /data/local/tmp || { echo "Cannot access /data/local/tmp"; exit; }
curl --insecure --progress-bar -O "https://buildbot.libretro.com/stable/1.9.0/android/RetroArch_ra32.apk" 2>&1
chmod -R 777 /data/local/tmp
pm install RetroArch_ra32.apk
am start -n com.retroarch.ra32/com.retroarch.browser.mainmenu.MainMenuActivity
rm -f RetroArch_ra32.apk