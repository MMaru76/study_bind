```
// IPv4のアドレスを変更
nmcli connection modify ens192 ipv4.addresses 192.168.2.200/24

// ゲートウェイのアドレスを追加
nmcli connection modify ens192 ipv4.gateway 192.168.2.1

// DNSサーバーを追加
nmcli connection modify ens192 ipv4.dns 192.168.2.200

// DHCPからマニュアルに切り替え
nmcli connection modify ens192 ipv4.method manual

// stop => start
nmcli connection down ens192 ; nmcli connection up ens192

// 各種情報
nmcli device show ens192
```

```
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens192
UUID=cac873b4-39af-4207-9e23-5bce8c469f0e
DEVICE=ens192
ONBOOT=yes
IPADDR=192.168.2.200
PREFIX=24
GATEWAY=192.168.2.1
DNS1=192.168.2.200
DNS2="8.8.8.8"
```

nmcli connection modify eth0 ipv4.addresses 192.168.2.200/24
nmcli connection modify eth0 ipv4.gateway 192.168.2.1
nmcli connection modify eth0 ipv4.dns 192.168.2.200
nmcli connection modify eth0 ipv4.method manual
nmcli connection down eth0; nmcli connection up eth0