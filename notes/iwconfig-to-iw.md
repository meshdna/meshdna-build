Bring interface down:
```bash
 ip link set wlan0 down
```

Bring interface up:
```bash
 ip link set wlan0 up
```

Check status of up/down interfaces:
```bash 
 ip link 
```

Note that the state is DOWN:
```bash
3: wlan0: <BROADCAST,MULTICAST> mtu 1500 qdisc mq state DOWN mode DEFAULT qlen 1000
    link/ether 00:23:13:02:0d:fa brd ff:ff:ff:ff:ff:ff
```

To scan:
```bash
iw dev wlan0 scan
```

Change to ad-hoc (ibss) mode:
```bash
iw dev wlan0 set type ibss
```

Join an ibss mesh network:
```bash
iw dev wlan0 ibss join meshdna 2437 HT40+ 02:12:34:56:78:9a
```

In summary:

Action               | old style                  | new style
-------------------- | -------------------------- | -------------------------
interface down       | ifconfig wlan0 down        | ip link set wlan0 down
interface up         | ifconfig wlan0 up          | ip link set wlan0 up
interface status     | ifconfig                   | ip link _or_ ip status
wireless scan        | iwlist wlan0 scan          | iw dev wlan0 scan
change wireless mode | iwconfig wlan0 mode ad-hoc | iw dev wlan0 set type ibss
