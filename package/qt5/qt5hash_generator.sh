#!/bin/bash
sudo apt install hashalot
for i in qt5*/*.hash
do
    echo "\$i is $i"
    tmp1=${i/qt5/qt}
    echo "\$tmp1 is $tmp1"
    tmp2=${tmp1/\/*/}
    echo "\$tmp2 is $tmp2"
    echo "http://download.qt.io/official_releases/qt/5.12/5.12.4/submodules/$tmp2-everywhere-src-5.12.4.tar.xz.sha256"
    context=`curl -x http://proxy01.bizerba.com:8080 http://download.qt.io/official_releases/qt/5.12/5.12.4/submodules/$tmp2-everywhere-src-5.12.4.tar.xz.sha256`
    echo "\$context is $context"
    echo sha256 $context >> $i
    done
