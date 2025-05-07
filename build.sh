#!/bin/bash

export ARCH=arm64
export PATH=$(pwd)/toolchain/gcc-cfp/gcc-ibv-jopp/aarch64-linux-android-4.9/bin:$PATH

mkdir out

ARCH=arm64 make -C $(pwd) O=out CROSS_COMPILE=aarch64-linux-android- exynos9810-crownlte-linux-os_defconfig
ARCH=arm64 make -j16 -C $(pwd) O=out CROSS_COMPILE=aarch64-linux-android-
 
cp out/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
