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

# File           : LVC-AMS_-_Run_privacy.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-18.01

echo
echo "Run LV-Crew Android Maintenance Scripts..."
echo
su

/bin/bash LVC-AMS_-_FSCk.sh
sleep 3

/bin/bash LVC-AMS_-_Fix_File_Permissions.sh
sleep 3

/bin/bash LVC-AMS_-_Delete_Caches.sh
sleep 3

/bin/bash LVC-AMS_-_Delete_Thumbnails.sh
sleep 3

/bin/bash LVC-AMS_-_Delete_Cookies.sh
sleep 3

/bin/bash LVC-AMS_-_Delete_Junk_Files.sh
sleep 3

/bin/bash LVC-AMS_-_Delete_Dalvik_Cache.sh
sleep 3

/bin/bash LVC-AMS_-_Trim.sh
sleep 3

/bin/bash LVC-AMS_-_Secure_Wipe.sh
sleep 3

/bin/bash LVC-AMS_-_Trim.sh
sleep 3

echo
read -p "Press [Enter] key to reboot, or Ctrl+C to abort..."
echo
echo "We reboot now..."
echo
reboot

# EOF
