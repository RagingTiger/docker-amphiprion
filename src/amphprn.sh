if [ "$AMPHIPRION" != "off" ] && [ "$DOCKER_STATE" = "RUN" ]; then
  # check debug
  if [ "$AMPDEBUG" = "on" ] ; then
    echo 'supervisord --loglevel=DEBUG'

  else
    echo 'supervisord'
  fi
  echo 'AMPHIPRION=off' > /root/amphprn.sh
fi
