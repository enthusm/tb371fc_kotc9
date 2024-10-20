set -e 
set -o pipefail

PROJECT=tb371fc
CONFIG=vendor/${PROJECT}_defconfig
GCC_PATH=/home/kern/Desktop/dev_authentic/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
CC=/home/kern/Desktop/clang10006/bin/clang
export PATH=$GCC_PATH:$PATH
BUILD_PATH=${PWD}/build
KERNEL_BUILD_PATH=${BUILD_PATH}/kernel
MOD_PATH=${BUILD_PATH}/vendor

mkdir -p build
make -j40 -C kernel O=${KERNEL_BUILD_PATH} ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- CLANG_TRIPLE=aarch64-linux-gnu- CC=${CC} ${CONFIG} menuconfig