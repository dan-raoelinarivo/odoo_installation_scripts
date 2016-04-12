#!/bin/sh

sudo echo "
#------------------------------------------------------------------------------#
#                            OFFICIAL UBUNTU REPOS                             #
#------------------------------------------------------------------------------#

###### Ubuntu Main Repos
deb http://distrib-coffee.ipsl.jussieu.fr/pub/linux/ubuntu/ trusty main restricted universe multiverse

###### Ubuntu Update Repos
deb http://distrib-coffee.ipsl.jussieu.fr/pub/linux/ubuntu/ trusty-security main restricted universe multiverse
deb http://distrib-coffee.ipsl.jussieu.fr/pub/linux/ubuntu/ trusty-updates main restricted universe multiverse
deb http://distrib-coffee.ipsl.jussieu.fr/pub/linux/ubuntu/ trusty-backports main restricted universe multiverse

###### Ubuntu Partner Repo
deb http://archive.canonical.com/ubuntu trusty partner

###### Ubuntu Extras Repo
deb http://extras.ubuntu.com/ubuntu trusty main
" > /etc/apt/sources.list

if [ $? -ne 0 ]; then
    echo "Tapez : sudo ./sources.list.sh"
fi

