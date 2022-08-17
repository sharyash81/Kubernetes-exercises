#!/bin/sh
# set up NFS server on CentOS
yum -y install nfs-server;
mkdir /var/nfs_share;
echo "/var/nfs_share 192.168.47.0/24(rw,sync,root_squash,all_squash)" >> /etc/exports;
chown -R nfsnobody:nfsnobody /var/nfs_share;
systemctl start nfs-server;
