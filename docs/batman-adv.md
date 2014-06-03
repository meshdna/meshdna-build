Activating a batman-adv interface
==================================

```
iw dev wlan0 ibss join meshdna 2437 HT40+ 02:12:34:56:78:9a
batctl if add wlan0
ip link set wlan0 up  
ip link set bat0 up
```

Deactivating a batman-adv interface
====================================
```
ip link set bat0 down
ip link set wlan0 down
batctl if del wlan0
```
