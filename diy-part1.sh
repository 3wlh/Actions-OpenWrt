#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon 
(git clone https://github.com/3wlh/Packages package/3wlh-package && {
    [ -d package/3wlh-package/luci-theme-argon ] && echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
    [ -d package/3wlh-package/luci-app-argon-config ] && echo "CONFIG_PACKAGE_luci-app-argon-config=y" >> .config
    [ -d package/3wlh-package/luci-app-cifs-mount ] && echo "CONFIG_PACKAGE_luci-app-cifs-mount=y" >> .config
})
