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

# File           : LVC-AMS_-_Options_privacy.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-18.01

echo
echo "Read 'Options privacy'..."
echo

# Variables for LVC-AMS_-_Trim.sh:

# Use as "Mountpoint":
# - A path like /sdcard;
# - Or "--fstab" to trim all mounted filesystems mentioned in /etc/fstab on devices that support the discard operation
#   (http://man7.org/linux/man-pages/man5/fstab.5.html);
# - Or "--all" to trim all mounted filesystems that support the discard operation.
LVC_AMS_Trim_Mountpoint="--all"


# Variables for LVC-AMS_-_Secure_Wipe.sh:

# Device to secure wipe:
LVC_AMS_SW_Device=sda

# EOF
