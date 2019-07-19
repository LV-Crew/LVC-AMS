# LVC-AMS
LV-Crew (LVC) Android Maintenance Scripts (AMS)

<br>

**_THIS_ _PROJECT_ _IS_ _"PRE-ALPHA"_ _!!!_**  
**_THE_ _SCRIPTS_ _DON'T_ _FULLY_ _WORK_ _BY_ _NOW_ _!!!_**  
**_THEY_ _ARE_ _ONLY_ _INTENDED_ _FOR_ _DEVELOPERS_ _WHO_ _WANT_ _TO_ _JOIN_ _IN_ _!!!_**

<br>

**Let's call it "BleachBit for Android"! ;-)**  
(This project isn't officially connected with BleachBit!)  
(Get BleachBit: [https://www.bleachbit.org/](https://www.bleachbit.org/))

<br>

**"Till now there existed no cleaner that can clean up my whole phone!"**  
(Tobias B. Besemer)

<br>

## Main benefits (Highlights)
The main benefits (highlights) are:
- The only cleaner where you can follow what he is exactly doing (because it is a script)!
- No own code with bugs - just Linux standard commands!
- The only cleaner for Cookies on Android and that for a lot of apps!
- Easy to participate (because it is a script)!
- Possibility to get the best cleaner for Android (because easy to participate)!
- Special script to restore privacy!

<br>

## tl;dr
Short explanation on how to use it:
- Make sure you be "root", or "root" your device.
- Copy the folder LVC-AMS into the "root folder" of the "partition" you want to maintenance.
- If you want to maintenance e.g. "system" and "SDCard", you need one copy for each "partition".
- Install a (good) Terminal Emulator (e.g. Termux from: [https://play.google.com/store/apps/details?id=com.termux](https://play.google.com/store/apps/details?id=com.termux)).
- Install maybe a keyboard that support "Ctrl + C" to abort the scrips at any point (e.g. Hacker's Keyboard from: [https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard](https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard)).
- Navigate into the LVC-AMS folder.
- Execute "LVC-AMS_-_Run_all.sh".
- If you have concerns about your privacy, you can instead execute "LVC-AMS_-_Run_privacy.sh" that deletes a bit more.
- That's it!

<br>

## Long explanation on how to use it
The long explanation on how to use it:
- Make sure you be "root", or "root" your device.
- Copy the folder LVC-AMS into the "root folder" of the "partition" you want to maintenance.
- If you want to maintenance e.g. "system" and "SDCard", you need one copy for each "partition".
- Install a (good) Terminal Emulator (e.g. Termux from: [https://play.google.com/store/apps/details?id=com.termux](https://play.google.com/store/apps/details?id=com.termux)).
- Install maybe a keyboard that support "Ctrl + C" to abort the scrips at any point (e.g. Hacker's Keyboard from: [https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard](https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard)).
- Navigate into the LVC-AMS folder.
- Edit "LVC-AMS_-_Options_all.sh" and/or "LVC-AMS_-_Options_privacy.sh".
- Execute "LVC-AMS_-_Run_all.sh" to run all tasks.
- If you have concerns about your privacy, you can instead execute "LVC-AMS_-_Run_privacy.sh" that deletes a bit more.
- If you want to execute just one task, maybe edit the variables in the script, the run it.
- If you like, you can create with "LVC-AMS_-_Create_cron_all.sh" a cron for "LVC-AMS_-_Run_all.sh". You can edit the variables in this script before, too.
- If you like, you can create with "LVC-AMS_-_Create_cron_privacy.sh" a cron for "LVC-AMS_-_Run_privacy.sh". You can edit the variables in this script before, too.
- If you like, you can support us with running "LVC-AMS_-_Log_scan_files.sh" and upload the created TXT file as an issue. This script will scan for special file names.
- If you like, you can support us with running "LVC-AMS_-_Log_scan_dirs.sh" and upload the created TXT file as an issue. This script will scan for special directory names.
- If you like, you can support us with running "LVC-AMS_-_Log_dir_structure.sh" and upload the created TXT file as an issue. This script will log your directory structure.
- If you reinstall your phone or move you extended SDCard (data) to a new one, you can run "LVC-AMS_-_Delete_App2SD_folders.sh" on it, if you have used (a) App2SD(+) (app).
- That's it!

<br>

## TO-DOS
TO-DOS-List:
- Add some echos
- Delete OBB files from extSD after new install
- [https://www.android-hilfe.de/forum/android-allgemein.20/handy-aufraeumen-android-ordner-tabu.619409.html](https://www.android-hilfe.de/forum/android-allgemein.20/handy-aufraeumen-android-ordner-tabu.619409.html)
- [https://www.androidpit.de/forum/448782/cache-im-android-ordner-loeschen](https://www.androidpit.de/forum/448782/cache-im-android-ordner-loeschen)
- Use alternative paths from: [https://github.com/d4rken/sdmaid-public/issues/674](https://github.com/d4rken/sdmaid-public/issues/674)
- And all the rest ^^
- SH, or CLI "LVC-AMS_-_Merge_system_APKs_updates"
- GUI App to manage and execute the scripts

<br>

## Questions & Answers
**Why are the paths relative?**
- So you can also use the scrips e.g. on an external SD card that is ejected (and e.g. connected to your Linux Desktop).
- You can also "clean up" some old backup archives.

**Why are some file names have small letters?**
Normal Cleaners and Tasks use big letters - batch jobs and special scripts have small letters.
