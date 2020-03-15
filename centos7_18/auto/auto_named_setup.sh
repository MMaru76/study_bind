# Backup
cp -fv /etc/named.conf /etc/named/backup/named.conf.`date "+%F"`
cp -fv /var/named/2.168.192.db /var/named/backup/2.168.192.db.`date "+%F"`
cp -fv /var/named/tabiya.local.lan /var/named/backup/tabiya.local.lan.`date "+%F"`

# Copy
cp -fv dns_git/study_bind/centos7_18/etc/named.conf /etc/named.conf
cp -fv dns_git/study_bind/centos7_18/var/named/tabiya.local.lan.zone /var/named/tabiya.local.lan
cp -fv dns_git/study_bind/centos7_18/var/named/2.168.192.db.zone /var/named/2.168.192.db

# diff
echo "==================== start config ===================="
diff -u /etc/named.conf /etc/named/backup/named.conf.`date "+%F"`
echo "==================== end config ===================="
echo " "
echo "==================== start tabiya ===================="
diff -u /var/named/tabiya.local.lan /var/named/backup/tabiya.local.lan.`date "+%F"`
echo "==================== end tabiya ===================="
echo " "
echo "==================== start ip ===================="
diff -u /var/named/2.168.192.db /var/named/backup/2.168.192.db.`date "+%F"`
echo "==================== end ip ===================="

# Named Restart
systemctl restart named.service
systemctl status named.service | grep "Active:"