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

# File           : LVC-AMS_-_Delete_zzz.others.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-21.01
# Notes          : Script isn't tested, yet!

echo
echo "Delete zzz.others..."
echo
su

cd ..

rm -rfv data/data/com.android.documentsui/databases/lastAccess.db
rm -rfv data/data/com.android.documentsui/databases/lastAccess.db-journal

rm -rfv data/data/com.android.server.telecom

rm -rfv data/data/com.android.providers.downloads/databases/downloads.db
rm -rfv data/data/com.android.providers.downloads/databases/downloads.db-journal

rm -rfv data/data/com.android.providers.media/databases/external.*
rm -rfv data/data/com.android.providers.media/databases/internal.*

rm -rfv data/data/com.atomicadd.fotos/databases/google_app_measurement.db
rm -rfv data/data/com.atomicadd.fotos/databases/google_app_measurement.db-journal
rm -rfv data/data/com.atomicadd.fotos/databases/google_app_measurement_local.db
rm -rfv data/data/com.atomicadd.fotos/databases/google_app_measurement_local.db-journal

rm -rfv data/data/com.coinbase.android/databases/google_app_measurement_local.db
rm -rfv data/data/com.coinbase.android/databases/google_app_measurement_local.db-journal

rm -rfv data/data/com.core.testingcatalog.beta_catalog/databases/google_analytics_v4.db
rm -rfv data/data/com.core.testingcatalog.beta_catalog/databases/google_analytics_v4.db-journal
rm -rfv data/data/com.core.testingcatalog.beta_catalog/databases/google_app_measurement.db
rm -rfv data/data/com.core.testingcatalog.beta_catalog/databases/google_app_measurement.db-journal
rm -rfv data/data/com.core.testingcatalog.beta_catalog/databases/google_app_measurement_local.db
rm -rfv data/data/com.core.testingcatalog.beta_catalog/databases/google_app_measurement_local.db-journal

rm -rfv data/data/com.degoo.android/databases/google_app_measurement_local.db
rm -rfv data/data/com.degoo.android/databases/google_app_measurement_local.db-journal

rm -rfv data/data/com.degoo.android/files/logs/.

rm -rfv data/data/com.discord/databases/google_analytics_v4.db
rm -rfv data/data/com.discord/databases/google_analytics_v4.db-journal
rm -rfv data/data/com.discord/databases/google_app_measurement_local.db
rm -rfv data/data/com.discord/databases/google_app_measurement_local.db-journal

rm -rfv data/data/com.dp.logcatapp/files/logcat/logcat_*.txt

rm -rfv data/data/com.dropbox.android/databases/google_app_measurement_local.db
rm -rfv data/data/com.dropbox.android/databases/google_app_measurement_local.db-journal

rm -rfv data/data/com.evozi.network/databases/ads.db
rm -rfv data/data/com.evozi.network/databases/ads.db-journal
rm -rfv data/data/com.evozi.network/databases/google_app_measurement_local.db
rm -rfv data/data/com.evozi.network/databases/google_app_measurement_local.db-journal

#rm -rfv data/data/com.facebook.katana/app_logcat_flash_logs/logs*
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_state_logs/com.facebook.katana_*.txt
# Need more analysis !!!
#rm -rfv data/data/com.facebook.katana/app_state_logs/com.facebook.katana_notification_*.txt
# Need more analysis !!!

rm -rfv Android/data/com.fstop.photo/files/recycleBin/.
rm -rfv Android/data/org.telegram.messenger.beta/files/logs/.

cd LVC-AMS

if run single
	LVC-AMS_-_End_clean_options.sh
endif

# EOF
