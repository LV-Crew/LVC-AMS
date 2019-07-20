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

# File           : LVC-AMS_-_Trim.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-19.01

# Use as "Mountpoint":
# - A path like /sdcard;
# - Or "--fstab" to trim all mounted filesystems mentioned in /etc/fstab on devices that support the discard operation
#   (http://man7.org/linux/man-pages/man5/fstab.5.html);
# - Or "--all" to trim all mounted filesystems that support the discard operation.
LVC_AMS_Trim_Mountpoint="--all"

echo
echo "Do Trim..."
echo
su

cd ..

# https://en.wikipedia.org/wiki/Trim_(computing)
# https://wiki.archlinux.org/index.php/Solid_state_drive#TRIM
# http://man7.org/linux/man-pages/man8/fstrim.8.html
fstrim -v $LVC_AMS_Trim_Mountpoint

cd LVC-AMS

if run single
	LVC-AMS_-_End_clean_options.sh
endif

# EOF
