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

# File           : LVC-AMS_-_Backup_make_system.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-20.02
# Notes          : This script have no function, yet!

echo
echo "Lets make a system backup..."
echo
su

echo
echo "We can't just copy the whole partition, because the SDCard, extSD and USB OTG are mounted from within!"
echo
echo "But we can backup '/data/data' and this is also what we can restore..."
echo
read -p "Press [Enter] key to continue..."


echo
echo "This script have no function, yet!"
echo

if false; then

# Here will follow some notes and coding snippets...

if [ -a Backup/phone or Backup/Phone or Backup/SMS]
then
  echo
  echo "Delete old backup?"
  echo "(You can only have one copy in your Backup folder!)"
  echo
  echo "Option 1: Delete"
  echo "Option 2: No, abort, because it's maybe better because I be insecure if I doing it right, or do it wrong!"
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
        

# http://www.codebind.com/linux-tutorials/bash-shell-scripting-check-file-exists-not/
if [ -a Backup/data ]
then
    rm Backup/data
fi

if [ -a Backup/phone ]
then
    rm Backup/phone
fi

if [ -a Backup/sms ]
then
    rm Backup/sms
fi

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
fi


# https://www.computerhope.com/unix/ucp.htm
cp -v -R -L --remove-destination --parents --preserve=mode,ownership,timestamps,context,xattr --sparse=always /data/data Backups

echo
echo "Do you want to delete com.android.*?"
echo "(It's risky to restore it!)"
echo "(Phone & SMS gets moved to 'Backup/'!)"
echo
echo "Option 1: Delete"
echo "Option 2: No, not, because it's maybe better because I be insecure if I doing it right, or I just don't know..."
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
      
      # https://www.computerhope.com/unix/umv.htm
      mv -v -f Backup/data/data/com.android.phone/phone.db Backup
      mv -v -f Backup/data/data/com.android.sms/sms.db Backup
      
      rm Backup/data/data/com.android.*
      
      fi
      
      ;;
    "Option 2")
      cp -v -R -L --remove-destination --parents --preserve=mode,ownership,timestamps,context,xattr --sparse=always Backup/data/data/com.android.phone/phone.db Backups
      cp -v -R -L --remove-destination --parents --preserve=mode,ownership,timestamps,context,xattr --sparse=always Backup/data/data/com.android.sms/sms.db Backups
      
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


fi


# EOF
