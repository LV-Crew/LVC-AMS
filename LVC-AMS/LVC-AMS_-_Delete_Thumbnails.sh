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

# File           : LVC-AMS_-_Delete_Thumbnails.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-19.01

echo
echo "Delete Thumbnails..."
echo
su

cd ..

#rm -rfv DCIM/.thumbnails/.

rm -rfv data/data/com.adobe.scan.android/files/scanned/thumbs/.
rm -rfv data/data/com.android.chrome/cache/thumbnails/.
rm -rfv data/data/com.dropbox.android/cache/u*/thumbs/.
rm -rfv data/data/com.dropbox.android/global/external/miscthumbs/.
rm -rfv data/data/com.dropbox.android/global/sharedlinks/thumbs/.
rm -rfv data/data/com.dropbox.android/u*/thumbs/.

#rm -rfv data/data/com.facebook.katana/app_compactdisk/graph_service_cache/*/*/storage/.
# Need more analysis !!!

# https://androidforums.com/threads/cached-album-artwork.459234/
rm -rfv Android/data/cooliris.media/.
rm -rfv Android/data/com.android.providers.media/albumthumbs/.
rm -rfv WhatsApp/.Thumbs/.

cd LVC-AMS

if run single
	LVC-AMS_-_End_clean_options.sh
endif

# EOF
