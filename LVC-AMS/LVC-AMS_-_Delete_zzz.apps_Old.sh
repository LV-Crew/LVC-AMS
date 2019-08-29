LVC_AMS_Del_old_apps_Del_APKs_too=0

# https://en.wikipedia.org/wiki/List_of_Google_apps_for_Android#Discontinued

# https://android.stackexchange.com/questions/3002/where-in-the-file-system-are-applications-installed

if LVC_AMS_Del_old_apps_Del_APKs_too=1
	if apk exist
		delete apk
	endif
endif

if apk not exist
	delete data
endif

if run single
	LVC-AMS_-_End_clean_options.sh
endif

