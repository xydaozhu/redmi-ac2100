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

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# 为lean源补充v2包
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lean/v2ray package/lean/v2ray

# Add Jerrykuku's packages(vssr/jd-daily/argon theme)
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/lua-maxminddb package/jerrykuku/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-argon-config package/jerrykuku/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/jerrykuku/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-vssr package/jerrykuku/luci-app-vssr
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/jerrykuku/luci-theme-argon
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall

# Fix libssh
# vpushd feeds/packages/libs
# rm -rf libssh
# svn co https://github.com/openwrt/packages/trunk/libs/libssh
# popd

# Use snapshots syncthing package
# pushd feeds/packages/utils
# rm -rf syncthing
# svn co https://github.com/openwrt/packages/trunk/utils/syncthing
# popd


