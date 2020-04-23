if [ "$AMPHIPRION" != "off" ] ; then
  if [ "$AMPDEBUG" = "on" ] ; then
    echo 'amphprn --debug &'
  else 
    echo 'amphprn &'
  fi
fi

