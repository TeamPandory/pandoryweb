#!/system/xbin/ash
eval $(echo "$QUERY_STRING"|awk -F'&' '{for(i=1;i<=NF;i++){print $i}}')

echo "Content-type: text/html"
echo ""
echo "<!DOCTYPE HTML>"
echo "<html>"
echo "<head>"
echo "<meta content=\"width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no, user-scalable=yes\" name=\"viewport\">"
echo "<title>Pandorytool - Open your box!</title>"
echo "<style type=\"text/css\">"
echo "html { height:100%; }"
echo "body { height:100%; font-family:Arial, sans-serif; text-align:center; margin:0; padding:10px; background-color:#01253d; background-image:url(../img/background.png);background-repeat:no-repeat; background-size: cover;}"
echo "img { display:block; margin:20px auto; }"
echo "ul,li { display:block; width:100%; list-style-type:none; padding:0; }"
echo "ul { margin:30px auto; width:400px; }"
echo "li { margin:0 0 20px 0; }"
echo "a { display:block; padding: 4px 5px; background-color:#fff; font-size:24px; border-radius:6px; font-weight:bold; border:1px solid black; color:#000000; text-decoration:none; }"
echo "pre { width:96%; background-color:#fff; padding:2%; overflow:auto; }"
echo "</style>"
echo "</head>"

echo "<img src=\"../img/logo.png\">";

echo "<ul>"
echo "<li><a href=\"?mode=android\">Switch to Android</a></li>"
echo "<li><a href=\"?mode=retroarch\">Switch to Retroarch</a></li>"
echo "<li><a href=\"?mode=gameplayer\">Switch to Pandora Menu</a></li>"
echo "<li><a href=\"?mode=factory\">Configure Factory Settings</a></li>"
echo "<li><a href=\"?mode=developer\">Configure Developer Settings</a></li>"
echo "<li><a href=\"?mode=cast\">Enable Casting</a></li>"
echo "<li><a href=\"?mode=mediacenter\">Start Media Center</a></li>"
echo "<li><a href=\"?mode=videoplayer\">Start Video Player</a></li>"
echo "<li><a href=\"?mode=screenshot\">Take Screenshot</a></li>"
echo "<li><a href=\"?mode=showlog\">Show Log</a></li>"
echo "<li><a href=\"?mode=reboot\">Reboot</a></li>"
echo "</ul>"

echo "<div style=\"display:none;\">"
if [ "$mode" == "android" ]; then
  am start -n com.benny.openlauncher/com.benny.openlauncher.activity.HomeActivity
fi

if [ "$mode" == "gameplayer" ]; then
  am start -n com.moorechip.gamemenu/com.moorechip.gamemenu.activity.MenuActivity
  am start -n com.retrostation.gamemenu/com.retrostation.gamemenu.activity.MenuActivity
fi

if [ "$mode" == "retroarch" ]; then
  am start -n com.retroarch.ra32/com.retroarch.browser.mainmenu.MainMenuActivity
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

if [ "$mode" == "reboot" ]; then
  if [ "$now" == "1" ]; then
    sleep 2
    reboot
  fi
  echo "<iframe src=\"?reboot&now=1\"></iframe>"
fi
echo "</div>"





if [ "$mode" == "screenshot" ]; then
  screencap -p > /data/pandorydata/www/capture.png
  echo "<img style=\"width:100%;height:auto;\" src="../capture.png">"
fi

if [ "$mode" == "showlog" ]; then
  echo "<pre>"
  logcat -t 500
  echo "</pre>"
fi




#
#echo "<pre>"
#env
#echo ""
#echo "Environment variables"
#echo ""
#env
#echo ""
#echo "========================================================="
#echo ""
#echo "Form variables :"
#echo ""
#echo ""
#echo "Text_Field=$foo"