#!/bin/bash
#=================================================
shopt -s extglob

sed -i '/$(curdir)\/compile:/c\$(curdir)/compile: package/opkg/host/compile' package/Makefile
sed "s/DEFAULT_PACKAGES:=/DEFAULT_PACKAGES:=luci-base luci-app-firewall luci-app-opkg luci-app-upnp \
luci-compat luci-lib-ipkg luci-lib-fs \
coremark wget-ssl curl autocore htop nano zram-swap kmod-lib-zstd kmod-tcp-bbr bash openssh-sftp-server block-mount resolveip ds-lite swconfig luci-app-fan /" /root/target.mk

sed -i "s/procd-ujail//" include/target.mk
sed -i "s/procd-seccomp//" include/target.mk

sed -i 's/Os/O2/g' include/target.mk
sed -i "/mediaurlbase/d" package/feeds/*/luci-theme*/root/etc/uci-defaults/*
sed -i 's/=bbr/=cubic/' package/kernel/linux/files/sysctl-tcp-bbr.conf

luci


sed '/DEFAULT_PACKAGES:=*/a\	luci \\' /root/target.mk


DEFAULT_PACKAGES
Default_Pakage=""
for pakage in $(echo ${Default_Pakage} | sed 's/ / /')
do
	echo ${pakage}
done