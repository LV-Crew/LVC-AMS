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

# File           : LVC-AMS_-_Delete_zzz.Fabric.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-18.01

echo
echo "Delete zzz.Fabric..."
echo
su

cd ..

rm -rfv data/data/com.adobe.psmobile/files/.Fabric/.
rm -rfv data/data/com.anddoes.launcher/files/.Fabric/.
rm -rfv data/data/com.atomicadd.fotos/files/.Fabric/.
rm -rfv data/data/com.coinbase.android/files/.Fabric/.
rm -rfv data/data/com.degoo.android/files/.Fabric/.
rm -rfv data/data/com.degoo.android/files/databases/FabricEvents/.
rm -rfv data/data/com.discord/files/.Fabric/.
rm -rfv data/data/com.evozi.network/files/.Fabric/.

cd LVC-AMS

# EOF
