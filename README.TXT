ndctl for CentOS Stream 9 and kernel 6.5
Fri Oct 20 09:52:28 PM PDT 2023
Roger C. Pao <roger.pao@smartm.com>


$ cat /etc/os-release
NAME="CentOS Stream"
VERSION="9"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="9"
PLATFORM_ID="platform:el9"
PRETTY_NAME="CentOS Stream 9"
ANSI_COLOR="0;31"
LOGO="fedora-logo-icon"
CPE_NAME="cpe:/o:centos:centos:9"
HOME_URL="https://centos.org/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux 9"
REDHAT_SUPPORT_PRODUCT_VERSION="CentOS Stream"

$ uname -a
Linux co9-vb-bun 5.14.0-283.el9.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Feb 23 22:23:05 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux


It is suggested to install the prerequisites and build and install
ndctl _before_ changing the kernel to 6.5.  This guarantees your
build environment is as complete as possible before dealting with the
dependencies of the new kernel.


The following scripts will run sudo and ask you for your password:
1_ndctl_prerequisites.sh installs the development environment for ndctl
2_ndctl_build_install.sh downloads, builds, and installs ndctl
3_kernel_6.5.sh installs the 6.5 kernel and supporting packages
