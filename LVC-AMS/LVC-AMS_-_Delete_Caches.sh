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
# Version of file: 2019-07-19.01

echo
echo "Delete Caches..."
echo
su

cd ..

# https://forums.oneplus.com/threads/caches-explained.828298/

# https://www.androidauthority.com/phone-storage-folders-explained-744100/
#rm -rfv cache/.
#rm -rfv data/cache/.
# Need more analysis !!!

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

echo "Delete Temp folders..."

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
# 
rm -rfv data/data/com.facebook.katana/app_compactdisk/graph_service_cache/*/*/tmp/.
# 
rm -rfv data/data/com.facebook.katana/app_compactdisk/mixed_cache__cold_effect_asset_disk_cache.*/tmp/.
# 
rm -rfv data/data/com.facebook.katana/app_compactdisk/mixed_cache__hot_effect_asset_disk_cache.*/tmp/.
# 
rm -rfv data/data/com.facebook.katana/app_compactdisk/msqrd_effect_asset_disk_cache_fixed.*/tmp/.
# 
rm -rfv data/data/com.facebook.katana/app_compactdisk/msqrd_effect_asset_disk_cache_fixed_sessionless/*/sessionless/tmp/.
# 
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

# EOF
