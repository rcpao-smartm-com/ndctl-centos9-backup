#!/bin/bash -x

# Linux localhost.localdomain 5.14.0-283.el9.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Feb 23 22:23:05 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
#sudo dnf -y upgrade --refresh
# sudo reboot
# Linux localhost.localdomain 5.14.0-375.el9.x86_64 #1 SMP PREEMPT_DYNAMIC Mon Oct 9 16:32:37 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

sudo dnf remove kernel kernel-core kernel-headers kernel-modules kernel-modules-extra -y

sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo dnf install https://www.elrepo.org/elrepo-release-9.el9.elrepo.noarch.rpm -y
dnf --disablerepo='*' --enablerepo=elrepo-kernel list available 
# sudo dnf --enablerepo=elrepo-kernel install kernel-ml -y

# sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml kernel-ml-core kernel-ml-headers kernel-ml-modules kernel-ml-modules-extra 
# Use the output from 'list available' above instead:
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml 
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-core 
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-devel-matched
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-doc.noarch
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-headers 
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-modules 
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-modules-extra
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-tools
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-tools-libs
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml-tools-libs-devel
#sudo reboot
# Linux localhost.localdomain 6.5.7-1.el9.elrepo.x86_64 #1 SMP PREEMPT_DYNAMIC Tue Oct 10 18:37:27 EDT 2023 x86_64 x86_64 x86_64 GNU/Linux
