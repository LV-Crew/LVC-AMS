LVC_AMS_Del_old_apps_Del_APKs_too=0

if LVC_AMS_Del_old_apps_Del_APKs_too=1
	if apk exist
		delete apk
	endif
endif

if apk not exist
	delete data
endif
