#!/bin/bash
# This script is intended to be run upon creation of new VM to populate repo

sudo add-apt-repository -y ppa:videolan/master-daily # necessary for debhelper-compat 13 required by json-glib
sudo apt install devscripts jq wget dpkg-dev coreutils curl gnupg reprepro debhelper

if [ ! -d repo ]; then
  mkdir -p repo/conf
  cp distributions-buster repo/conf/distributions
fi