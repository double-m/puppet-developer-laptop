#!/bin/bash

# to avoid having ~/.gitconfig configured with biethb@gmail.com
if [ "$1" == '--no-gitconfig' ]; then
  gitconfig='false'
else
  gitconfig='true'
fi

# test for puppet
dpkg -s puppet >/dev/null
if [ $? -ne 0 ]; then
   echo "Installing puppet ..."
   sudo apt-get -y install puppet
fi

sudo FACTER_install_gitconfig=$gitconfig \
     FACTER_home=$HOME \
     FACTER_real_id=`whoami` \
     puppet apply --modulepath=modules init.pp