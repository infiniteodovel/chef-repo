#!/usr/bin/env bash


apt-get update


apt --fix-broken install


apt-get -y install arj



# Install curl (needed by kerl)
  apt-get -y install curl

# Install the build tools (dpkg-dev g++ gcc libc6-dev make)
  apt-get -y install build-essential

# automatic configure script builder (debianutils m4 perl)
  apt-get -y install autoconf

# Needed for HiPE (native code) support, but already installed by autoconf
# apt-get -y install m4

# Needed for terminal handling (libc-dev libncurses5 libtinfo-dev libtinfo5 ncurses-bin)
  apt-get -y install libncurses5-dev

# For building with wxWidgets (observer needs this)
  apt-get -y install libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3

# For building ssl (libssh-4 libssl-dev zlib1g-dev)
  apt-get -y install libssh-dev

# ODBC support (libltdl3-dev odbcinst1debian2 unixodbc)
  apt-get -y install unixodbc-dev

# Get rebar
  curl -O https://raw.githubusercontent.com/wiki/rebar/rebar/rebar
  chmod a+x rebar
  mv rebar /usr/local/bin

# Get kerl, build, install, and activate Erlang
  curl -O https://raw.githubusercontent.com/yrashk/kerl/master/kerl
  chmod a+x kerl
  mv kerl /usr/local/bin
  kerl update releases
  kerl build 17.1 17.1
  kerl install 17.1 /opt/erlang/17.1

# This will make the erlang installation active (in the path)
  echo '. /opt/erlang/17.1/activate' >> ~/.bashrc

sleep 3



apt-get update

apt --fix-broken install

sleep 2


apt-get install erlang-nox

sleep 1


apt-get update

apt --fix-broken install



end
