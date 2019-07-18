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

# File           : LVC-AMS_-_Secure_Wipe.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-18.02

# Device to secure wipe:
LVC_AMS_SW_Device=sda

echo
echo "Do Secure Wipe..."
echo
su

# https://security.stackexchange.com/questions/5749/how-can-i-reliably-erase-all-information-on-a-hard-drive
# https://security.stackexchange.com/questions/5662/is-it-enough-to-only-wipe-a-flash-drive-once
# https://ata.wiki.kernel.org/index.php/ATA_Secure_Erase
# https://en.wikipedia.org/wiki/Hdparm

hdparm -I /dev/$LVC_AMS_SW_Device

echo -n mem > /sys/power/state

# We use "LVC-AMS" as a temporary password!
hdparm --user-master u --security-set-pass LVC-AMS /dev/$LVC_AMS_SW_Device

hdparm -I /dev/$LVC_AMS_SW_Device

time hdparm --user-master u --security-erase LVC-AMS /dev/$LVC_AMS_SW_Device

hdparm -I /dev/$LVC_AMS_SW_Device

# EOF
