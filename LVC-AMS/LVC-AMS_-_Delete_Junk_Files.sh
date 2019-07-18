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

# File           : LVC-AMS_-_Delete_Junk_Files.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-18.01

echo
echo "Delete Junk Files..."
echo
su

cd ..

rm -rfv stack_trace_*.txt

cd LVC-AMS

# EOF
