#!/bin/bash
#
# Copyright (c) 1998-2021 中國遠徵 <https://i.ssss.fun>
#
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default


git clone https://github.com/kiddin9/openwrt-packages.git package/yuanzheng
wget https://github.com/womade/LEDE_actions/raw/main/patch/JDC-1.tar.gz -O JDC-1.tar.gz
tar -zxvf JDC-1.tar.gz
rm -rf JDC-1.tar.gz
