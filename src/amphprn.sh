if [ "$AMPHIPRION" != "off" ] ; then
  if [ "$AMPDEBUG" = "on" ] ; then
    echo 'supervisord --loglevel=DEBUG'
  else 
    echo 'supervisord'
  fi
fi

