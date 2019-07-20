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

# File           : LVC-AMS_-_Backup_make_SDcard.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-20.02
# Notes          : This script have no function, yet!

echo
echo "Lets make a SDcard backup..."
echo
su

echo
echo "Use this script only from your extSD, or USB OTG !!!"
echo "Else the backup will backup itself till your SDcard is full !!!"
echo
echo
echo "Option 1: Continue"
echo "Option 2: Abort, because it's maybe better because I be insecure if I doing it right, or did it wrong"
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
      
      echo
      echo "This script have no function, yet!"
      echo
      
      if false; then
      
      # Here will follow some notes and coding snippets...
      
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
