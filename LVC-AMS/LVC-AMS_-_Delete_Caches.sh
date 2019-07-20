#!/bin/bash

# LV-Crew (LVC) Android Maintenance Scripts (AMS)
# Copyright (C) 2019 Tobias B. Besemer
# https://github.com/LV-Crew/LVC-AMS

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# File           : LVC-AMS_-_Delete_Caches.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-20.02
# Notes          : Script isn't tested, yet!
#                  Code have some TO-DOS!

echo
echo "Delete Caches..."
echo
su

cd ..


echo
echo "Script isn't tested, yet!"
echo
echo
echo "Option 1: Continue"
echo "Option 2: Abort, because it's maybe better because it's maybe erroneous"
echo
echo "Exit Script"
echo
echo
PS3='Please enter your choice: '
Options=("Option 1" "Option 2" "Exit Script")
select opt in "${Options[@]}"
do
  case $opt in
    "Option 1")
      

# https://forums.oneplus.com/threads/caches-explained.828298/

# https://www.androidauthority.com/phone-storage-folders-explained-744100/

# Delete content in "data/cache/":
# Can include a 'lost+found' folder!
https://www.cyberciti.biz/faq/mv-command-howto-move-folder-in-linux-terminal/
mv -v -b cache/lost+found /
#rm -rfv cache/.
# Needs anyway more analysis & clarification!

# Delete content in "cache/":
# Can include a 'lost+found' folder!
https://www.cyberciti.biz/faq/mv-command-howto-move-folder-in-linux-terminal/
mv -v -b data/cache/lost+found /
#rm -rfv data/cache/.
# Needs anyway more analysis & clarification!

# https://android.stackexchange.com/questions/47924/where-android-apps-store-data/47951
rm -rfv data/data/*/cache/.
rm -rfv data/data/*/code_cache/.
rm -rfv Android/data/*/cache/.

rm -rfv data/data/com.anddoes.launcher/files/umeng_it.cache
#rm -rfv data/data/com.dropbox.android/app_DropboxSyncCache/*/*-account/account_photo_cache/.
# First "*" is in my case "a crypted user ID".
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_appcache/.
# Need more analysis !!!
rm -rfv data/data/com.facebook.katana/app_browser_proc_webview/IndexedDB/.
#rm -rfv data/data/com.facebook.katana/app_compactdisk/bookmarks_cache/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/datafetch_network_fetch_disk_cache/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/downloadservice_cache/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/graph_service_cache/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/inspiration_asset_disk_cache/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/mixed_cache__cold_effect_asset_disk_cache.*/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/mixed_cache__hot_effect_asset_disk_cache.*/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/msqrd_effect_asset_disk_cache_fixed.*/.
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_compactdisk/msqrd_effect_asset_disk_cache_fixed_sessionless/.
# Need more analysis !!!
rm -rfv data/data/com.facebook.katana/app_webview/IndexedDB/.

rm -rfv Android/data/com.amazon.kindle/files/cache/.
rm -rfv Android/data/com.sand.airdroid/files/cache/.
rm -rfv InstaSave/is_cache/.

echo
echo "Delete Temp folders..."
echo

rm -rfv data/data/ch.threema.app/files/tmp/.
rm -rfv data/data/com.biglybt.android.client/files/.biglybt/tmp/.
rm -rfv data/data/com.dropbox.android/app_DropboxSyncCache/*/Temp/.
# "*" is in my case "a crypted user ID".
rm -rfv data/data/com.dropbox.android/cache/u*/tmp/.
# "*" is in my case "a 8 digit user ID".
rm -rfv data/data/com.dropbox.android/files/anl/tmp/.
rm -rfv data/data/com.dropbox.android/global/sharedlinks/tmp/.
rm -rfv data/data/com.facebook.katana/app_compactdisk/cc_ard_always_unzip_tmp/.
rm -rfv data/data/com.facebook.katana/app_compactdisk/filesimage/*/sessionless/tmp/.
# TO-DOS
# "*" is in my case "*follow*".
rm -rfv data/data/com.facebook.katana/app_compactdisk/graph_service_cache/*/*/tmp/.
# TO-DOS
# "*" is in my case "*follow*".
rm -rfv data/data/com.facebook.katana/app_compactdisk/mixed_cache__cold_effect_asset_disk_cache.*/tmp/.
# TO-DOS
# "*" is in my case "*follow*".
rm -rfv data/data/com.facebook.katana/app_compactdisk/mixed_cache__hot_effect_asset_disk_cache.*/tmp/.
# TO-DOS
# "*" is in my case "*follow*".
rm -rfv data/data/com.facebook.katana/app_compactdisk/msqrd_effect_asset_disk_cache_fixed.*/tmp/.
# TO-DOS
# "*" is in my case "*follow*".
rm -rfv data/data/com.facebook.katana/app_compactdisk/msqrd_effect_asset_disk_cache_fixed_sessionless/*/sessionless/tmp/.
# TO-DOS
# "*" is in my case "*follow*".
rm -rfv data/data/com.facebook.katana/app_fb-forker-tmp/.
rm -rfv data/data/com.facebook.katana/app_upload_crash_monitor_temp/.

rm -rfv .TotalCommander/temp/.
rm -rfv Android/data/ch.threema.app/files/tmp/.
rm -rfv Android/data/dk.tacit.android.foldersync.lite/files/temp/.
rm -rfv Android/data/org.thunderdog.challegram/files/temp/.
rm -rfv com.facebook.katana/fb_temp/.
rm -rfv com.facebook.orca/fb_temp/.
rm -rfv FStopMediaGallery/temp/.

cd LVC-AMS


if false; then

# Here will follow some notes and coding snippets...

if run single
  /bin/bash LVC-AMS_-_End_clean_options.sh
endif

fi

      
      ;;
    "Option 2")
      break
      ;;
    "Exit Script")
      # https://www-numi.fnal.gov/offline_software/srt_public_context/WebDocs/Errors/unix_system_errors.html
      # https://mariadb.com/kb/en/library/operating-system-error-codes/
      # http://tldp.org/LDP/abs/html/exitcodes.html
      exit 1
      ;;
    *) echo "Invalid option $REPLY!";;
  esac
done


# EOF
