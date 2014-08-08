#!/bin/bash

# test for puppet
dpkg -s puppet
if [ $? -ne 0 ]; then
   sudo apt-get -y install puppet
fi

sudo puppet apply --modulepath=modules init.pp