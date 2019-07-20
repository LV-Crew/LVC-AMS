# https://support.t-mobile.com/community/phones-tablets-devices -> Search -> "pre-installed"
# T-Mobile Samsung Galaxy S8: https://support.t-mobile.com/docs/DOC-34273
# T-Mobile Samsung Galaxy S9: https://support.t-mobile.com/docs/DOC-37139
# https://forum.xda-developers.com/showthread.php?t=2377718

# https://android.stackexchange.com/questions/3002/where-in-the-file-system-are-applications-installed

echo
echo "Reboot now?"
echo
echo "Option 1: Reboot now"
echo "Option 2: Reboot later"
echo "Exit Script"
echo
PS3='Please enter your choice: '
Options=("Option 1" "Option 2" "Exit Script")
select opt in "${Options[@]}"
do
  case $opt in
    "Option 1")
      echo
      echo "We reboot now..."
      echo
      reboot
      ;;
    "Option 2")
      break
      ;;
    "Exit Script")
      # https://www-numi.fnal.gov/offline_software/srt_public_context/WebDocs/Errors/unix_system_errors.html
      # https://mariadb.com/kb/en/library/operating-system-error-codes/
      # http://tldp.org/LDP/abs/html/exitcodes.html
      exit 1
      ;;
    *) echo "Invalid option $REPLY!";;
  esac
done

