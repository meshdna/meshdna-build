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

In summary:

Action           | old style            | new style
---------------- | ---------            | ---------
interface down   | ifconfig wlan0 down  | ip link set wlan0 down
interface up     | ifconfig wlan0 up    | ip link set wlan0 up
interface status | ifconfig             | ip link _or_ ip status
wireless scan    | iwlist wlan0 scan    | iw dev wlan0 scan

