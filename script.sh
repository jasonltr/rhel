#!/bin/bash
## Azure CLI - 2.39.0
rpm --import https://packages.microsoft.com/keys/microsoft.asc
dnf install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm
dnf -y install azure-cli-2.39.0-1.el8
## Java 8 ,11, 17
yum -y install java-1.8.0-openjdk-devel
yum -y install java-11-openjdk-devel
yum -y install java-17-openjdk
## Git client - latest
yum -y install git
## Bamboo agent - will be installed by devops team
## Wget - latest (might come with RHEL)
yum -y install wget
## Curl - latest
yum -y install curl
## Jq  - 1.5-1
yum install -y jq
## Yq - 4.6.0
## OWASP Zap - 2.11.1