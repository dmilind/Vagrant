#!/usr/bin/env bash
# Compatible with virtual-box 5.2.26. Respective guest additions can be installed by mentioning specific version.
#

set -e
yum update -y 
yum install wget gcc kernel-devel -y 
cd /opt
wget http://download.virtualbox.org/virtualbox/5.2.26/VBoxGuestAdditions_5.2.26.iso 
mount VBoxGuestAdditions_5.2.26.iso -o loop /mnt 
sh /mnt/VBoxLinuxAdditions.run --nox11
unmount /mnt 
rm -f VBoxGuestAdditions_5.2.26.iso
