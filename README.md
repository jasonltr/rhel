# rhel

[rhel7 image](https://catalog.redhat.com/software/containers/ubi8/ubi/5c359854d70cc534b3a3784e?container-tabs=gti)  

`docker pull registry.access.redhat.com/ubi8/ubi:8.6-903`  

`docker run -it f754849582f5`  

```
[root@8538e73a0609 /]# cat /etc/os-release
NAME="Red Hat Enterprise Linux"
VERSION="8.6 (Ootpa)"
ID="rhel"
ID_LIKE="fedora"
VERSION_ID="8.6"
PLATFORM_ID="platform:el8"
PRETTY_NAME="Red Hat Enterprise Linux 8.6 (Ootpa)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:redhat:enterprise_linux:8::baseos"
HOME_URL="https://www.redhat.com/"
DOCUMENTATION_URL="https://access.redhat.com/documentation/red_hat_enterprise_linux/8/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"

REDHAT_BUGZILLA_PRODUCT="Red Hat Enterprise Linux 8"
REDHAT_BUGZILLA_PRODUCT_VERSION=8.6
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux"
REDHAT_SUPPORT_PRODUCT_VERSION="8.6"
```

`dnf install python3`
`python3 -V`

## Azure CLI - 2.39.0

`rpm --import https://packages.microsoft.com/keys/microsoft.asc`
`dnf install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm`

`dnf -y install azure-cli-2.39.0-1.el8`
```
[root@f8f51c4ddc27 /]# az --version
azure-cli                         2.39.0
```

## Java 8 ,11, 17

`yum -y install java-1.8.0-openjdk-devel`
`yum -y install java-11-openjdk-devel`
`yum -y install java-17-openjdk`
```
[root@f8f51c4ddc27 /]# alternatives --config java

There are 3 programs which provide 'java'.

  Selection    Command
-----------------------------------------------
*+ 1           java-1.8.0-openjdk.x86_64 (/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.342.b07-2.el8_6.x86_64/jre/bin/java)
   2           java-11-openjdk.x86_64 (/usr/lib/jvm/java-11-openjdk-11.0.16.0.8-1.el8_6.x86_64/bin/java)
   3           java-17-openjdk.x86_64 (/usr/lib/jvm/java-17-openjdk-17.0.4.0.8-2.el8_6.x86_64/bin/java)

Enter to keep the current selection[+], or type selection number:
```

## Git client - latest
`yum -y install git`
```
[root@f8f51c4ddc27 /]# git --version
git version 2.31.1
```

## Bamboo agent - will be installed by devops team

## Wget - latest (might come with RHEL)
`yum -y install wget`
```
[root@f8f51c4ddc27 /]# wget --version
GNU Wget 1.19.5 built on linux-gnu.
```


## Curl - latest
`yum -y install curl`
```
[root@f8f51c4ddc27 /]# curl --version
curl 7.61.1
```
## Jq  - 1.5-1
cannot find ver 1.5-1, is 1.6-3 ok?
```
[root@f8f51c4ddc27 /]# yum --showduplicate list jq
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 0:18:52 ago on Fri Aug  5 04:00:04 2022.
Available Packages
jq.i686                               1.6-3.el8                              ubi-8-appstream
jq.x86_64                             1.6-3.el8                              ubi-8-appstream
```
`yum install -y jq`
```
[root@f8f51c4ddc27 rpmbuild]# jq --version
jq-1.6
```


## Yq - 4.6.0

`dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y`
`yum install snapd`
error in installing snapd
[root@f8f51c4ddc27 rpmbuild]# yum install snapd --skip-broken --nobest
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 0:25:32 ago on Fri Aug  5 06:13:52 2022.
Dependencies resolved.

 Problem: conflicting requests
  - nothing provides squashfs-tools needed by snapd-2.56.2-1.el8.x86_64
============================================================================================
 Package            Architecture        Version                     Repository         Size
============================================================================================
Skipping packages with broken dependencies:
 snapd              x86_64              2.56.2-1.el8                epel               17 M

Transaction Summary
============================================================================================
Skip  1 Package

Nothing to do.
Complete!

## OWASP Zap - 2.11.1
unable to install snapd