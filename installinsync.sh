#!/bin/sh


# includes release information files and respective variables
. /etc/lsb-release

# changing the distribution ID since ubuntu is on the lsb-release as "Ubuntu"
DISTRIB_NAME=$(echo "$DISTRIB_ID" | tr '[:upper:]' '[:lower:]')

# getting repository key
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C

# creating list file
touch /etc/apt/sources.list.d/insynchq.list

# getting repository information on list file
echo "deb http://apt.insynchq.com/$DISTRIB_NAME $DISTRIB_CODENAME non-free contrib" >/etc/apt/sources.list.d/insynchq.list

# updating package information
apt-get update;

# Finally installing insync
apt-get install insync
