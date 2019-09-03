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