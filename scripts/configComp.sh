#!/bin/bash
export CONCURRENCY_LEVEL=4
cd linux-3*
echo "======Configuring the kernel========"
cutname="cutomBuild"$(date +%Y%m%d%z)
make mrproper
make clean
make localmodconfig
echo $cutname
echo "======Compiling the kernel========"
fakeroot make-kpkg --initrd --append-to-version=-custom110514 kernel_image kernel_headers
cd ..
echo "======Intalling the kernel========"
sudo dpkg -i *.deb
echo "======New kernel installation complete========"
exit

