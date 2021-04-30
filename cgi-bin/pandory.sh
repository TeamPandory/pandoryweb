#!/system/xbin/ash
eval $(echo "$QUERY_STRING"|awk -F'&' '{for(i=1;i<=NF;i++){print $i}}')

if [ "$mode" == "showlog" ]; then
  echo "Content-Type: text/plain"
  echo ""
  dmesg
  logcat -d
  df
  cat /proc/partitions
  exit
fi

if [ "$mode" == "install/retroarch" ]; then
  echo "Content-Type: text/html"
  echo ""
  echo "<pre>## Installing Retroarch ##"
  echo "Retroarch is being downloaded and installed in the background."
  echo "The download is 82MB so could take several minutes depending on your"
  echo "internet connection."
  echo "You will see any logs / error messages here."
  echo "RetroArch will start when the installation is complete."
  echo ""
  installs/retroarch.sh
  echo "<a href=\"?page=apps\">Return to menu</a>"
  exit
fi

if [ "$mode" == "install/scummvm" ]; then
  echo "Content-Type: text/html"
  echo ""
  echo "<pre>## Installing ScummVM ##"
  echo "ScummVM is being downloaded and installed in the background."
  echo "The download is 44MB so could take several minutes depending on your"
  echo "internet connection."
  echo "You will see any logs / error messages here."
  echo "ScummVM will start when the installation is complete."
  echo ""
  installs/scummvm.sh
  echo "<a href=\"?page=apps\">Return to menu</a>"
  exit
fi

if [ "$mode" == "install/vlc" ]; then
  echo "Content-Type: text/html"
  echo ""
  echo "<pre>## Installing VideoLAN ##"
  echo "VideoLAN is being downloaded and installed in the background."
  echo "The download is 60MB so could take several minutes depending on your"
  echo "internet connection."
  echo "You will see any logs / error messages here."
  echo "VideoLAN will start when the installation is complete."
  echo ""
  installs/vlc.sh
  echo "<a href=\"?page=apps\">Return to menu</a>"
  exit
fi

if [ "$mode" == "install/ppsspp" ]; then
  echo "Content-Type: text/html"
  echo ""
  echo "<pre>## Installing PPSSPP ##"
  echo "PPSSPP is being downloaded and installed in the background."
  echo "The download is 63MB so could take several minutes depending on your"
  echo "internet connection."
  echo "You will see any logs / error messages here."
  echo "PPSSPP will start when the installation is complete."
  echo ""
  installs/ppsspp.sh
  echo "<a href=\"?page=apps\">Return to menu</a>"
  exit
fi

if [ "$mode" == "install/flycast" ]; then
  echo "Content-Type: text/html"
  echo ""
  echo "<pre>## Installing Flycast ##"
  echo "Flycast is being downloaded and installed in the background."
  echo "The download is 24MB so could take several minutes depending on your"
  echo "internet connection."
  echo "You will see any logs / error messages here."
  echo "Flycast will start when the installation is complete."
  echo ""
  installs/flycast.sh
  echo "<a href=\"?page=apps\">Return to menu</a>"
  exit
fi

if [ "$mode" == "install/openbor" ]; then
  echo "Content-Type: text/html"
  echo ""
  echo "<pre>## Installing OpenBOR ##"
  echo "OpenBOR is being downloaded and installed in the background."
  echo "The download is 2MB so could take several minutes depending on your"
  echo "internet connection."
  echo "You will see any logs / error messages here."
  echo "OpenBOR will start when the installation is complete."
  echo ""
  installs/openbor.sh
  echo "<a href=\"?page=apps\">Return to menu</a>"
  exit
fi


if [ "$mode" == "install/dosbox" ]; then
  echo "Content-Type: text/html"
  echo ""
  echo "<pre>## Installing Magic DOSBox ##"
  echo "DOSBox is being downloaded and installed in the background."
  echo "The download is 55MB so could take several minutes depending on your"
  echo "internet connection."
  echo "You will see any logs / error messages here."
  echo "DOSBox will start when the installation is complete."
  echo ""
  installs/dosbox.sh
  echo "<a href=\"?page=apps\">Return to menu</a>"
  exit
fi

echo "Content-Type: text/html; charset=utf-8"
echo ""

echo "<!DOCTYPE HTML>"
echo "<html>"
echo "<head>"
echo "<meta content=\"width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no, user-scalable=yes\" name=\"viewport\">"
echo "<title>Pandorytool - Open your box!</title>"
echo "<style type=\"text/css\">"
echo "html { height:100%; color: #fff; }"
echo ".container { width:400px; margin:0 auto; }"
echo "h2 { border:1px solid rgba(255,255,255,0.3); color:#fff; text-shadow: 1px 1px 5px rgba(63, 63, 63, 1); font-style:italic; background-color:rgba(90,30,20,0.9); margin:0 0 10px 0; padding:5px 10px; font-size:24px; }"
echo "h3 { border:1px solid rgba(255,255,255,0.3); color:#fff; text-shadow: 1px 1px 5px rgba(63, 63, 63, 1); font-style:italic; background-color:rgba(90,30,20,0.7); margin:0; padding:5px 10px; font-size:20px; }"
echo "h4 { margin:0 0 10px 0 }"
echo "h3 a { text-decoration:0; color: #fff; display:block; }"
echo "body { height:100%; font-family:Arial, sans-serif; text-align:center; margin:0; padding:10px; background-color:#01253d; background-image:url(../img/background.png);background-repeat:no-repeat; background-size: cover;}"
echo "img { display:block; margin:20px auto; }"
echo ".remote div { padding-top:10px; margin-bottom:10px; }"
echo ".remote div input { font-size:18px; border:1px solid #000; padding:5px 10px; color:###; background-color:#fff; -webkit-appearance: none;}"
echo ".remote div input:active {  background: #e5e5e5; -webkit-box-shadow: inset 0px 0px 5px #c1c1c1; -moz-box-shadow: inset 0px 0px 5px #c1c1c1; box-shadow: inset 0px 0px 5px #c1c1c1; outline: none;}"
echo "ul,li { display:block;  list-style-type:none; padding:0; }"
echo "ul { border:1px solid rgba(255,255,255,0.3); background-color: rgba(255,255,255,0.1);  margin:10px auto 10px 0; padding:20px 0 0 0}"
echo "li { margin:0 20px 20px 20px; }"
echo "ul a { display:block; padding: 4px 5px; background-color:#fff; font-size:24px; border-radius:6px; font-weight:bold; color:#000000; text-decoration:none; }"
echo "ul a.sub { font-size: 16px; padding: 2px 3px; }"
echo "ul a:hover { background-color: rgba(245,245,245,1); }"
echo "pre, div.output { color:#000; white-space:pre; text-align:left; background-color:#fff; padding:20px; margin:20px; overflow:auto;}"
echo "div.shell { font-family:monospace; text-align:left; white-space:pre; background-color:#000; color:#fff; text-align:center; margin:20px; padding:20px; border-radius:15px; }"
echo "</style>"
echo "<script>";
echo "function sendKey(keyCode) { var img = new Image(1,1); img.src = '?mode=sendkey&code='+keyCode; }";
echo "</script>";
echo "</head>"
echo "<body>"

echo "<div class=\"container\">";
echo "<a href=\"pandory.sh\"><img src=\"../img/logo.png\"></a>";

####### MAIN
if [ "$page" == "" ]; then
echo "<h2>Main Menu</h2>";
echo "<ul>"
echo "<li><a href=\"?page=launchers\">Launchers</a></li>"
echo "<li><a href=\"?page=settings\">Settings</a></li>"
echo "<li><a href=\"?page=apps\">Apps</a></li>"
echo "<li><a href=\"?page=tools\">Tools</a></li>"
echo "<li><a href=\"?page=remote\">Remote Control</a></li>"
echo "</ul>"
echo "<ul>"
echo "<li><a onclick=\"return confirm('Are you sure?')\" href=\"?mode=reboot\">Reboot</a></li>"
echo "<li><a onclick=\"return confirm('Are you sure?')\" href=\"?mode=shutdown\">Safe Shutdown</a></li>"
echo "</ul>"
fi

####### LAUNCHERS
if [ "$page" == "launchers" ]; then
echo "<h2>Launchers</h2>";
echo "<h3><a href=\"?\">&lt;&lt; Back</a></h3>";
echo "<ul>"
echo "<li><a href=\"?page=launchers&mode=gameplayer\">Pandora Menu</a></li>"
echo "<li><a href=\"?page=launchers&mode=android\">Android</a></li>"
if [ -f "/data/app/com.retroarch.ra32-1.apk" ]; then
  echo "<li><a href=\"?page=launchers&mode=start/retroarch\">Retroarch</a></li>"
fi
echo "</ul>"
fi


####### SETTINGS
if [ "$page" == "settings" ]; then
echo "<h2>Settings</h2>";
echo "<h3><a href=\"?\">&lt;&lt; Back</a></h3>";
echo "<ul>"
echo "<li><a href=\"?page=settings&mode=pandorasettings\">Pandora Settings</a></li>"
echo "<li><a href=\"?page=settings&mode=factory\">Factory Settings</a></li>"

if [ -f "/system/app/DeveloperSetting.apk" ]; then
  echo "<li><a href=\"?page=settings&mode=developer\">Developer Settings</a></li>"
fi

echo "</ul>"
echo "<ul>"
echo "<li><a href=\"?page=settings&mode=aspect/43\">4:3 - Old TV</a></li>"
echo "<li><a href=\"?page=settings&mode=aspect/16\">16:9 - Full screen</a></li>"
echo "<li><a href=\"?page=settings&mode=aspect/34\">3:4 - Vertical shooter (3D+)</a></li>"
echo "</ul>"
fi


####### APPS
if [ "$page" == "apps" ]; then
echo "<h2>Run Apps</h2>";
echo "<h3><a href=\"?\">&lt;&lt; Back</a></h3>";
echo "<ul>"
if [ -f "/data/app/com.retroarch.ra32-1.apk" ]; then
  echo "<li><a href=\"?page=apps&mode=start/retroarch\">Retroarch</a></li>"
else
  echo "<li><a href=\"?page=apps&mode=install/retroarch\">Install Retroarch</a></li>"
fi

if [ -f "/data/app/com.flycast.emulator-1.apk" ]; then
  echo "<li><a href=\"?page=apps&mode=start/flycast\">Flycast</a></li>"
else
  echo "<li><a href=\"?page=apps&mode=install/flycast\">Install Flycast</a></li>"
fi

if [ -f "/data/app/org.openbor.engine-1.apk" ]; then
  echo "<li><a href=\"?page=apps&mode=start/openbor\">OpenBOR</a></li>"
else
  echo "<li><a href=\"?page=apps&mode=install/openbor\">Install OpenBOR</a></li>"
fi

if [ -f "/data/app/bruenor.magicbox.free-1.apk" ]; then
  echo "<li><a href=\"?page=apps&mode=start/dosbox\">Magic DOSBox</a></li>"
else
  echo "<li><a href=\"?page=apps&mode=install/dosbox\">Install Magic DOSBox</a></li>"
fi

if [ -f "/data/app/org.ppsspp.ppsspp-1.apk" ]; then
  echo "<li><a href=\"?page=apps&mode=start/ppsspp\">PPSSPP</a></li>"
else
  echo "<li><a href=\"?page=apps&mode=install/ppsspp\">Install PPSSPP</a></li>"
fi

if [ -f "/data/app/org.scummvm.scummvm-1.apk" ]; then
  echo "<li><a href=\"?page=apps&mode=start/scummvm\">ScummVM</a></li>"
else
  echo "<li><a href=\"?page=apps&mode=install/scummvm\">Install ScummVM</a></li>"
fi

if [ -f "/data/app/org.videolan.vlc-1.apk" ]; then
  echo "<li><a href=\"?page=apps&mode=start/vlc\">VLC</a></li>"
  echo "<li>Save this code as a bookmark on your phone/computer and click it while you are on a YouTube video page: <pre>javascript:(window.location.href.indexOf('watch?v=') > -1) ? window.location.href='http://$HTTP_HOST/cgi-bin/pandory.sh?page=youtube&code='+(new URLSearchParams(window.location.search)).get('v') : alert('This is not a recognized youtube link. Please use one in this form: https://www.youtube.com/watch?v=d60V9yAPE_s');</pre></li>";
  echo "<li>You can also play video from SD/USB stick. Create a folder called &quot;media&quot; and place any video you wish to play inside.</li>";
  echo "<li><a class=\"sub\" href=\"?page=localmedia&device=sdcard1\">Play video from SD card</a></li>"
  echo "<li><a class=\"sub\" href=\"?page=localmedia&device=sda1\">Play video from USB stick</a></li>"
else
  echo "<li><a href=\"?page=apps&mode=install/vlc\">Install VLC</a></li>"
fi

echo "<li><a href=\"?page=apps&mode=mediacenter\">Media Center</a></li>"
echo "<li><a href=\"?page=apps&mode=videoplayer\">Video Player</a></li>"
echo "</ul>"
fi

####### TOOLS
if [ "$page" == "tools" ]; then
echo "<h2>Tools</h2>";
echo "<h3><a href=\"?\">&lt;&lt; Back</a></h3>";
echo "<ul>"
echo "<li><a href=\"?page=tools&mode=screenshot#screenshot\">Take Screenshot</a></li>"
echo "<li><a href=\"?page=tools&mode=showlog#log\">Show Log</a></li>"
echo "</ul>"
fi


####### YOUTUBE VIEWER
if [ "$page" == "youtube" ]; then
  killall org.videolan.vlc
  echo "<h2>Starting Youtube...</h2>";
  am start -n org.videolan.vlc/org.videolan.vlc.gui.video.VideoPlayerActivity -a android.intent.action.VIEW "https://www.youtube.com/watch?v=$code" > /dev/null
  sleep 3 && input keyevent 66
  echo "<script>setTimeout(function(){ window.location.href=\"?page=remote\"; }, 5000)</script>";
fi

if [ "$page" == "localmedia" ]; then
  killall org.videolan.vlc
  echo "<h2>Playing video from USB/SD</h2>";
  am start -n org.videolan.vlc/org.videolan.vlc.gui.video.VideoPlayerActivity -a android.intent.action.VIEW "file:///storage/external_storage/$device/media" > /dev/null
  sleep 3 && input keyevent 66
  echo "<script>setTimeout(function(){ window.location.href=\"?page=remote\"; }, 5000)</script>";
fi

if [ "$page" == "remote" ]; then
  echo "<div class=\"remote\">";
  echo "<h2>Remote Control</h2>";

  echo "<div>";
  echo "<input type=\"button\" onclick=\"sendKey(89)\" value=\"Rewind\" />";
  echo "<input type=\"button\" onclick=\"sendKey(85)\" value=\"Play/Pause\" />";
  echo "<input type=\"button\" onclick=\"sendKey(90)\" value=\"Fast-Forward\" />";
  echo "</div>";

  echo "<div>";
  echo "<input type=\"button\" onclick=\"sendKey(88)\" value=\"Last Video\" />";
  echo "<input type=\"button\" onclick=\"sendKey(87)\" value=\"Next Video\" />";
  echo "<input type=\"button\" onclick=\"sendKey(31)\" value=\"Cropping\" />";
  echo "</div>";

  echo "<div>";
  echo "<input type=\"button\" onclick=\"sendKey(4)\" value=\"Back\" />";
  echo "<input type=\"button\" onclick=\"sendKey(66)\" value=\"Enter\" />";
  echo "<input type=\"button\" onclick=\"sendKey(11)\" value=\"Escape\" />";
  echo "</div>";

  echo "<div>";
  echo "<input type=\"button\" onclick=\"sendKey(24)\" value=\"Vol +\" />";
  echo "<input type=\"button\" onclick=\"sendKey(25)\" value=\"Vol -\" />";
  echo "<input type=\"button\" onclick=\"sendKey(164)\" value=\"Mute\" />";
  echo "</div>";

  echo "<div>";
  echo "<input type=\"button\" onclick=\"sendKey(131)\" value=\"F1\" />";
  echo "<input type=\"button\" onclick=\"sendKey(132)\" value=\"F2\" />";
  echo "</div>";

  echo "<div>";
  echo "<input type=\"button\" onclick=\"sendKey(21)\" value=\"Left\" />";
  echo "<input type=\"button\" onclick=\"sendKey(19)\" value=\"Up\" />";
  echo "<input type=\"button\" onclick=\"sendKey(20)\" value=\"Down\" />";
  echo "<input type=\"button\" onclick=\"sendKey(22)\" value=\"Right\" />";
  echo "</div>";

  echo "</div>";
fi



echo "<div style=\"display:none;\">"

if [ "$mode" == "shutdown" ]; then
  input keyevent 26
fi

if [ "$mode" == "aspect/43" ]; then
  echo "160 0 1119 719" > /sys/class/graphics/fb0/window_axis
fi

if [ "$mode" == "aspect/34" ]; then
  echo "370 0 909 719" > /sys/class/graphics/fb0/window_axis
fi

if [ "$mode" == "aspect/16" ]; then
  echo "0 0 1279 719" > /sys/class/graphics/fb0/window_axis
fi

if [ "$mode" == "android" ]; then
  am start -n com.android.launcher/com.android.launcher2.Launcher
fi

if [ "$mode" == "gameplayer" ]; then
  am start -n com.moorechip.gamemenu/com.moorechip.gamemenu.activity.MenuActivity
  am start -n com.retrostation.gamemenu/com.retrostation.gamemenu.activity.MenuActivity
fi

if [ "$mode" == "start/retroarch" ]; then
  am start -n com.retroarch.ra32/com.retroarch.browser.mainmenu.MainMenuActivity
fi

if [ "$mode" == "start/vlc" ]; then
  am start -n org.videolan.vlc/.StartActivity
fi

if [ "$mode" == "start/ppsspp" ]; then
  am start -n org.ppsspp.ppsspp/.PpssppActivity
fi

if [ "$mode" == "start/flycast" ]; then
  killall com.flycast.emulator
  am start -n com.flycast.emulator/com.reicast.emulator.MainActivity
fi

if [ "$mode" == "start/openbor" ]; then
  killall org.openbor.engine
  am start -n org.openbor.engine/org.libsdl.app.SDLActivity
fi

if [ "$mode" == "start/dosbox" ]; then
  am start -n bruenor.magicbox.free/.uiGameStarterActivity
fi

if [ "$mode" == "start/scummvm" ]; then
  monkey -p org.scummvm.scummvm 1
fi

if [ "$mode" == "pandorasettings" ]; then
  am start -n com.moorechip.systemsetting/com.moorechip.systemsetting.activity.SystemSettingActivity
  am start -n com.retrostation.systemsetting/com.retrostation.systemsetting.activity.main.SystemSettingActivity
fi

if [ "$mode" == "factory" ]; then
  am start -n com.moorechip.factorysetting/.MainActivity
  am start -n com.retrostation.factorysetting/.MainActivity
fi

if [ "$mode" == "developer" ]; then
  am start -n com.moorechip.developersetting/.MainActivity
fi

if [ "$mode" == "cast" ]; then
  am start -n com.amlogic.miracast/.WiFiDirectMainActivity
fi

if [ "$mode" == "mediacenter" ]; then
  am start -n com.amlogic.mediacenter/.MediaCenterActivity
fi

if [ "$mode" == "videoplayer" ]; then
  am start -n com.meson.videoplayer/.VideoPlayer
fi

if [ "$mode" == "sendkey" ]; then
  input keyevent $code
fi

if [ "$mode" == "reboot" ]; then
  if [ "$now" == "1" ]; then
    exec >&-
    exec 2>&-
    reboot &
    exit
  fi
  echo "<iframe src=\"?reboot&now=1\"></iframe>"
fi
echo "</div>"

if [ "$mode" == "screenshot" ]; then
  screencap -p > /data/pandorydata/www/capture.png
  if [ -f "/data/pandorydata/www/capture.png" ]; then
  echo "<img id=\"screenshot\" style=\"width:100%;height:auto;\" src="../capture.png">"
  else
    echo "<p>No screnshot available</p>";
  fi
fi

echo "</div>"; #container
echo "</body>";
echo "</html>";
