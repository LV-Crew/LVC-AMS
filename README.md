# LVC-AMS
LV-Crew (LVC) Android Maintenance Scripts (AMS)

<br>

## Warning
**_THIS_ _PROJECT_ _IS_ _"PRE-ALPHA"_ _!!!_**  
**_THE_ _SCRIPTS_ _DON'T_ _FULLY_ _WORK_ _BY_ _NOW_ _!!!_**  
**_THEY_ _ARE_ _ONLY_ _INTENDED_ _FOR_ _DEVELOPERS_ _WHO_ _WANT_ _TO_ _JOIN_ _IN_ _!!!_**

<br>

## Project News
**2019-07-20: Files styling and make the source code executable for first debugging**  
**2019-07-18: Status: We collect information!**  
**2019-07-18: Initial Commit**  
**2019-07-18: GitHub Repo created**  

<br>

## General
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
- Easy to participate (because it is a script)!
- No own code with bugs - just Linux standard commands!
- The only cleaner for Cookies on Android and that for a lot of apps (or all, if you scan for the files)! **(Not stable, yet!)**
- Can delete old apps (and there data)! **(Not implemented, yet!)**
- Can delete the content of the Temp folders by a lot of apps! **(Not stable, yet!)**
- Can delete remains of old apps, if you e.g. move your data to a new device! **(Not implemented, yet!)**
- Can delete a lot of (pre-installed) system apps (bloatware)! **(Not implemented, yet!)**
- Can help you to save a lot of disk space by e.g. deleting Caches! **(Not stable, yet!)**
- Can make a simple "data only" backup of the system partition! **(Not implemented, yet!)**
- Can check your partitions and fix file & folder permissions! **(Not stable, yet!)**
- Can delete the Thumbnails of a lot of apps to restore your privacy! **(Not stable, yet!)**
- Can delete Analytics of a lot of apps (or all, if you scan for the files) to restore your privacy! **(Not stable, yet!)**
- Special script to restore privacy!
- Can delete Fabric of a lot of apps (or all, if you scan for the files) to give you peace! **(Not stable, yet!)**
- Can make a simple secure wipe of your free space! **(Not stable, yet!)**
- Can Trim your system & data partions! **(Not stable, yet!)**
- Can create Logs that the developers and improve the scripts! **(Not implemented, yet!)**
- Possibility to get the best cleaner for Android (because easy to participate)!

<br>

## tl;dr
Short explanation on how to use it:
- Make sure your device is "rooted".
- Download a copy of LVC-AMS from [releases](https://github.com/LV-Crew/LVC-AMS/releases),
  or "check out" the latest version with your favorite Git Tool, or download the
  single files directly from the [Repo](https://github.com/LV-Crew/LVC-AMS/tree/master/LVC-AMS).
- Copy the (extracted) folder LVC-AMS into the "root folder" of the "partition" you want to maintenance. (E.g. "/", "/sdcard", "/data/media/0", "/data/sdext2", "/storage/<UUID>", "/mnt/media_rw", or how ever it is called on your device...)
- If you want to maintenance e.g. "system" and "SDcard", you need one copy for each "partition".
- Install a (good) Terminal Emulator (e.g. Termux from: [https://play.google.com/store/apps/details?id=com.termux](https://play.google.com/store/apps/details?id=com.termux)).
- Install maybe a keyboard that support "Ctrl + C" to abort the scrips at any point (e.g. Hacker's Keyboard from: [https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard](https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard)).
- Open the terminal and navigate with e.g. "cd /LVC-AMS" into the LVC-AMS folder. (Consider you maybe have with different paths to your extSD different system rights!)
- Make the files executable with "chmod +x .".
- Execute "LVC-AMS_-_Run_all.sh" with .
- https://www.cyberciti.biz/faq/run-execute-sh-shell-script/
- If you have concerns about your privacy, you can instead execute "LVC-AMS_-_Run_privacy.sh" that deletes a bit more.
- That's it!

<br>

## Long explanation on how to use it
The long explanation on how to use it:
- Make sure your device is "rooted".
- Copy the folder LVC-AMS into the "root folder" of the "partition" you want to maintenance.
- If you want to maintenance e.g. "system" and "SDCard", you need one copy for each "partition".
- Install a (good) Terminal Emulator (e.g. Termux from: [https://play.google.com/store/apps/details?id=com.termux](https://play.google.com/store/apps/details?id=com.termux)).
- Install maybe a keyboard that support "Ctrl + C" to abort the scrips at any point (e.g. Hacker's Keyboard from: [https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard](https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard)).
- Install Editor
- Edit "LVC-AMS_-_Options_all.sh" and/or "LVC-AMS_-_Options_privacy.sh".
- Open the terminal and navigate with e.g. "cd /LVC-AMS" into the LVC-AMS folder.
- Make the files executable with "chmod +x .".
- Execute "LVC-AMS_-_Run_all.sh" to run all tasks with .
- https://www.cyberciti.biz/faq/run-execute-sh-shell-script/
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

## XDA Thread
**_Follows!_**

<br>

## About the source code
Here are some documentation if you want to read the source code or want to participate in it:  
"Shell Scripting Tutorial" by Steve Parker: [https://www.shellscript.sh/](https://www.shellscript.sh/)  
GNU "Bash Reference Manual": [https://www.gnu.org/software/bash/manual/bash.html](https://www.gnu.org/software/bash/manual/bash.html)  
The Linux Documentation Project (LDP) "Advanced Bash-Scripting Guide": [http://www.tldp.org/LDP/abs/html/index.html](http://www.tldp.org/LDP/abs/html/index.html)  

If you want to participate:  
We use shell scripts (bash) as long it's possible and justifiable!  
Use a corresponding filename and ".sh" as file extension!  
Copy a header of an existing file, if you create a new one for the project!  
If you need to create a new header: Don't forget to mention GNU3 in the header! ;-)  
Follow the standards in the file you work on! (Better: Update the file to the project standards and make a single commit for it.)  
And remember: "# The code is documentation enough!" -> Keep it this way! No documentation, but make good comments in code!  
And, please add a "# EOF" at the end of each script file you create, too. ;-) Thanks!  
Use a good coding editor like [Notepad++](https://notepad-plus-plus.org/) for Windows!

If you want to participate, please follow these Style Guides:  
Google "Shell Style Guide": [https://google.github.io/styleguide/shell.xml](https://google.github.io/styleguide/shell.xml)  
"Bash Style Guide and Coding Standard" by Fritz Mehner, Fachhochschule Südwestfalen, Iserlohn: [https://lug.fh-swf.de/vim/vim-bash/StyleGuideShell.en.pdf](https://lug.fh-swf.de/vim/vim-bash/StyleGuideShell.en.pdf)  
"Bash Style Guide and Coding Standard" is "With complementing comments on the testing of scripts".  

<br>

## TO-DOS
TO-DOS-List:
- Add some echos here and there ;-)
- [https://www.android-hilfe.de/forum/android-allgemein.20/handy-aufraeumen-android-ordner-tabu.619409.html](https://www.android-hilfe.de/forum/android-allgemein.20/handy-aufraeumen-android-ordner-tabu.619409.html)
- [https://www.androidpit.de/forum/448782/cache-im-android-ordner-loeschen](https://www.androidpit.de/forum/448782/cache-im-android-ordner-loeschen)
- Add command line parameters to the scripts were it's posible
- Use alternative paths from: [https://github.com/d4rken/sdmaid-public/issues/674](https://github.com/d4rken/sdmaid-public/issues/674)
- And all the rest ^^
- Simple menu for command line ("LVC-AMS_-_Menu.sh")
- SH, or CLI "LVC-AMS_-_Merge_system_APKs_updates"
- GUI App to manage and execute the scripts

<br>

## Questions & Answers
**Why are the paths relative?**  
- So you can also use the scrips e.g. on an external SD card that is ejected (and e.g. connected to your Linux Desktop).
- You can also "clean up" some old backup archives.

**Why are some file names have small letters?**  
Normal Cleaners and Tasks use big letters - batch jobs and special scripts have small letters.
