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

# File           : LVC-AMS_-_Fix_File_Permissions.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-18.01

echo
echo "Fix File Permissions..."
echo

# https://forum.xda-developers.com/showthread.php?t=2222297

# Code used from:
# https://forum.xda-developers.com/showthread.php?t=2239421
# sdcard Fix Permissions: Recovery Flashable Zip
# osm0sis @ xda-developers

OUTFD=/proc/self/fd/$2;
ui_print() { echo -e "ui_print $1\nui_print" > $OUTFD; }
set_perm() {
  uid=$1; gid=$2; mod=$3;
  shift 3;
  chown $uid:$gid "$@" || chown $uid.$gid "$@";
  chmod $mod "$@";
}
set_perm_recursive() {
  uid=$1; gid=$2; dmod=$3; fmod=$4;
  shift 4;
  until [ ! "$1" ]; do
    chown -R $uid:$gid "$1" || chown -R $uid.$gid "$1";
    find "$1" -type d -exec chmod $dmod {} +;
    find "$1" -type f -exec chmod $fmod {} +;
    shift;
  done;
}
show_progress() { echo "progress $1 $2" > $OUTFD; }
set_progress() { echo "set_progress $1" > $OUTFD; }
restore_con() { 
  for i in /system/bin/toybox /system/toolbox /system/bin/toolbox; do
    LD_LIBRARY_PATH=/system/lib $i restorecon -R "$@";
  done || restorecon -R "$@";
}

ui_print " ";
ui_print "sdcard Fix Permissions Script";
ui_print "by osm0sis @ xda-developers";
show_progress 1.34 0;

ui_print " ";
ui_print "Mounting...";
mount -o ro /system;
mount /data;
set_progress 0.2;

ui_print " ";
ui_print "Setting /data/media to media_rw and fixing...";
set_perm_recursive 1023 1023 0775 0664 "/data/media";
set_perm 1023 1023 0770 "/data/media" "/data/media/0";
restore_con /data/media;
set_progress 0.6;

if [ -d /data/media/clockworkmod -o -d /data/media/0/clockworkmod ]; then
  ui_print " ";
  ui_print "Setting CWM directory perms...";
  set_perm_recursive 0 0 0777 0777 "/data/media/clockworkmod";
  set_perm_recursive 0 0 0777 0666 "/data/media/0/clockworkmod";
fi;
set_progress 0.8;

if [ -d /data/media/0/TWRP ]; then
  ui_print " ";
  ui_print "Setting TWRP directory perms...";
  set_perm_recursive 0 0 0777 0664 "/data/media/0/TWRP";
  set_perm_recursive 1023 1023 0777 0664 "/data/media/0/TWRP/BACKUPS";
  set_perm_recursive 1023 1023 0775 0664 "/data/media/0/TWRP/theme";
fi;
set_progress 1.0;

ui_print " ";
ui_print "Unmounting...";
umount /data;
umount /system;
set_progress 1.2;

ui_print " ";
ui_print "Done!";
set_progress 1.34;
exit 0;

# EOF
