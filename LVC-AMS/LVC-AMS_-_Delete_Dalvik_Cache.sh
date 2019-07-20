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

# File           : LVC-AMS_-_Delete_Dalvik_Cache.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-19.01

echo
echo "Delete Dalvik Cache..."
echo
su

cd ..

# https://forums.oneplus.com/threads/caches-explained.828298/

# https://android.stackexchange.com/questions/46926/android-folder-hierarchy/46934
rm -rfv data/dalvik-cache/.
rm -rfv dalvik-cache/.

# https://forum.xda-developers.com/google-nexus-5/help/how-to-wipe-art-cache-t2641077

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

cd LVC-AMS

if run single
	LVC-AMS_-_End_clean_options.sh
endif

# EOF
