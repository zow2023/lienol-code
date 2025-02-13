#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

#git checkout 069e71144ebd04b16271fe5cb1d57945a5007545

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 注释默认 luci
#sed -i 's/^\(.*luci\)/#&/' feeds.conf.default
# 添加回退 luci
#sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git^db0ddd1' feeds.conf.default


# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#cd package/libs && mkdir -p libcron && mkdir -p Package/libcron/libs && wget -O Package/libcron/libs/Makefile https://raw.githubusercontent.com/immortalwrt/packages/refs/heads/master/libs/libcron/Makefile
