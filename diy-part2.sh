#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
#
#git clone https://github.com/gngpp/luci-theme-design.git -b js package/luci-theme-design
#git clone https://github.com/gngpp/luci-app-design-config.git package/luci-app-design-config
git clone https://github.com/kingyond/luci-app-accesscontrol-plus package/luci-app-accesscontrol-plus

rm -rf feeds/packages/net/chinadns-ng
rm -rf feeds/packages/net/xray-core
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall/luci
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall/packages
#git clone https://github.com/xiaorouji/openwrt-passwall.git -b  luci-smartdns-dev package/passwall/luci
rm -rf feeds/package/helloworld
git clone https://github.com/fw876/helloworld.git -b master package/helloworld
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 21.x feeds/packages/lang/golang
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
