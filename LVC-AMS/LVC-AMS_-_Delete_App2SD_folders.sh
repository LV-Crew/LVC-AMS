# https://forums.androidcentral.com/general-help-how/85809-tutorial-everything-you-wanted-know-about-app2sd-ext3-ext4-partitions.html

set option to overjump "goto end"

echo "Here follows info... Delete Dalvik, OBB & APKs on extSD and in Backup..."

if not option
	goto end
else
# real commands

delete /Dalvik

# https://www.droidwiki.org/wiki/APK_Expansion_Files
delete /OBB
delete /Android/OBB

delete APKs

delete more data

:end
