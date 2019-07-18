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

# File           : LVC-AMS_-_Delete_Cookies.sh
# Author         : Tobias B. Besemer
# Author URL     : https://github.com/Tobias-B-Besemer
# Version of file: 2019-07-18.01

echo
echo "Delete Cookies..."
echo
su

cd ..

rm -rfv data/data/com.amazon.mShop.android.ahopping/app_webview/Cookies
rm -rfv data/data/com.amazon.mShop.android.ahopping/app_webview/Cookies-journal

rm -rfv data/data/com.android.vending/app_webview/Cookies
rm -rfv data/data/com.android.vending/app_webview/Cookies-journal

rm -rfv data/data/com.atomicadd.fotos/app_webview/Cookies
rm -rfv data/data/com.atomicadd.fotos/app_webview/Cookies-journal

rm -rfv data/data/com.buak.Link2SD/app_webview/Cookies
rm -rfv data/data/com.buak.Link2SD/app_webview/Cookies-journal

rm -rfv data/data/com.chornerman.easycachewiper/app_webview/Cookies
rm -rfv data/data/com.chornerman.easycachewiper/app_webview/Cookies-journal

rm -rfv data/data/com.core.testingcatalog.beta_catalog/app_webview/Cookies
rm -rfv data/data/com.core.testingcatalog.beta_catalog/app_webview/Cookies-journal

rm -rfv data/data/com.degoo.android/app_webview/Cookies
rm -rfv data/data/com.degoo.android/app_webview/Cookies-journal

rm -rfv data/data/com.dropbox.android/app_webview/Cookies
rm -rfv data/data/com.dropbox.android/app_webview/Cookies-journal

rm -rfv data/data/com.evozi.network/app_webview/Cookies
rm -rfv data/data/com.evozi.network/app_webview/Cookies-journal

rm -rfv data/data/com.facebook.katana/app_browser_proc_webview/Cookies
rm -rfv data/data/com.facebook.katana/app_browser_proc_webview/Cookies-journal
rm -rfv data/data/com.facebook.katana/app_webview/Cookies
rm -rfv data/data/com.facebook.katana/app_webview/Cookies-journal

cd LVC-AMS

# EOF
