if [ "$AMPHIPRION" != "off" ] && [ "$DOCKER_STATE" = "RUN" ]; then
  # check debug
  if [ "$AMPDEBUG" = "on" ] ; then
    supervisord -c /etc/supervisor/supervisord.conf --loglevel=DEBUG

  else
    supervisord -c /etc/supervisor/supervisord.conf
  fi
  echo 'AMPHIPRION=off' > /root/amphprn.sh
fi
