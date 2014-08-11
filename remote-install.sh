set -e
set -x

if [ -f master.zip ]; then
  rm -f master.zip
fi
if [ -d puppet-developer-laptop-master ]; then
  rm -fR puppet-developer-laptop-master
fi

wget https://github.com/backuitist/puppet-developer-laptop/archive/master.zip
unzip master.zip
rm -f master.zip
cd puppet-developer-laptop-master

./install.sh

cd ..
rm -fR puppet-developer-laptop-master