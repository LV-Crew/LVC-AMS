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
# Version of file: 2019-07-20.01
# Notes          : Script isn't tested, yet!

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

/bin/bash LVC-AMS_-_Delete_Fabric.sh
sleep 3

/bin/bash LVC-AMS_-_Delete_old_apps.sh
sleep 3

/bin/bash LVC-AMS_-_Delete_zzz.others.sh
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

/bin/bash LVC-AMS_-_Log_scan_files.sh
sleep 3

/bin/bash LVC-AMS_-_Log_scan_dirs.sh
sleep 3

/bin/bash LVC-AMS_-_Log_dir_structure.sh
sleep 3

/bin/bash LVC-AMS_-_End_clean_options.sh
sleep 3

echo
echo "Reboot now?"
echo
echo "Option 1: Reboot now"
echo "Option 2: Reboot later"
echo "Exit Script"
echo
PS3='Please enter your choice: '
Options=("Option 1" "Option 2" "Exit Script")
select opt in "${Options[@]}"
do
  case $opt in
    "Option 1")
      echo
      echo "We reboot now..."
      echo
      reboot
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
