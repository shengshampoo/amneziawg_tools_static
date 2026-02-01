
#! /bin/bash

set -e

WORKSPACE=/tmp/workspace
mkdir -p $WORKSPACE
mkdir -p /work/artifact

# amneziawg-tools
cd $WORKSPACE
git clone https://github.com/amnezia-vpn/amneziawg-tools
cd amneziawg-tools/src
LDFLAGS="-static --static -no-pie -s" make WITH_WGQUICK=yes
make install

cd /usr/bin
tar vcJf ./amg.tar.xz amg
mv ./amg.tar.xz /work/artifact/
