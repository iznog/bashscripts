#!/bin/sh

. /etc/lsb-release

echo $DISTRIB_RELEASE

DISTRIB_NAME=$(echo "$DISTRIB_ID" | tr '[:upper:]' '[:lower:]')
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C

touch /etc/apt/sources.list.d/insynchq.list

echo "deb http://apt.insynchq.com/$DISTRIB_NAME $DISTRIB_CODENAME non-free contrib" >/etc/apt/sources.list.d/insynchq.list

apt-get update;

apt-get install insync
