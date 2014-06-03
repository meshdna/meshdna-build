#!/bin/bash
# /etc/init.d/meshdna

# The following part carries out specific functions depending on arguments.
case "$1" in
  start)
    echo -ne "Starting meshdna... "
    ip link set wlan0 up
    iw dev wlan0 ibss join meshdna 2437 HT40+ 02:12:34:56:78:9a
    batctl if add wlan0
    ip link set bat0 up
    echo -e "Done!\r"
    ;;
  stop)
    echo -ne "Stopping meshdna... "
    ip link set bat0 down
    batctl if del wlan0
    ip link set wlan0 down
    echo -e "Done!\r"
    ;;
  *)
    echo "Usage: /etc/init.d/meshdna {start|stop}"
    exit 1
    ;;
esac

exit 0

