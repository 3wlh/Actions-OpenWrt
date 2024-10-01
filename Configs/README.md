# Actions-OpenWrt
#### images
```
# CONFIG_TARGET_ROOTFS_EXT4FS is not set
# CONFIG_TARGET_ROOTFS_SQUASHFS is not set
CONFIG_TARGET_ROOTFS_SQUASHFS=y
CONFIG_TARGET_SQUASHFS_BLOCK_SIZE=256
CONFIG_TARGET_IMAGES_GZIP=y

```

## LuCI
#### Collections
```
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-light=y
```

#### Modules
```
CONFIG_PACKAGE_luci-base=y
```

#### Translations
```
CONFIG_LUCI_LANG_zh_Hans=y
```

#### LuCI_Class
```
CONFIG_PACKAGE_luci-compat=y
CONFIG_PACKAGE_luci-lua-runtime=y
CONFIG_PACKAGE_luci-mod-admin-full=y
CONFIG_PACKAGE_luci-mod-network=y
#CONFIG_PACKAGE_luci-mod-rpc=y
CONFIG_PACKAGE_luci-mod-status=y
CONFIG_PACKAGE_luci-mod-system=y
```
#### Applications
```
CONFIG_PACKAGE_luci-app-argon-config=y
CONFIG_PACKAGE_luci-app-cifs-mount=y
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_luci-app-firewall=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-app-opkg=y
#CONFIG_PACKAGE_luci-app-ttyd=y
#CONFIG_PACKAGE_luci-app-turboacc=y
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-wechatpush=y
```
#### Themes
```
CONFIG_PACKAGE_luci-theme-bootstrap=y
```
#### Protocols
```
CONFIG_PACKAGE_luci-proto-3g=y
CONFIG_PACKAGE_luci-proto-bonding=y
CONFIG_PACKAGE_luci-proto-ipip=y
CONFIG_PACKAGE_luci-proto-ipv6=y
CONFIG_PACKAGE_luci-proto-modemmanager=y
CONFIG_PACKAGE_luci-proto-ncm=y
CONFIG_PACKAGE_luci-proto-ppp=y
CONFIG_PACKAGE_luci-proto-qmi=y
```
#### Libraries
```
CONFIG_PACKAGE_luci-lib-base=y
CONFIG_PACKAGE_luci-lib-ip=y
CONFIG_PACKAGE_luci-lib-ipkg=y
CONFIG_PACKAGE_luci-lib-json=y
CONFIG_PACKAGE_luci-lib-jsonc=y
CONFIG_PACKAGE_luci-lib-nixio=y
```
#### LuCI-i18n
```
CONFIG_PACKAGE_luci-i18n-base-zh-cn=y
# CONFIG_PACKAGE_luci-i18n-cifs-mount-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ddns-zh-cn=y
CONFIG_PACKAGE_luci-i18n-firewall-zh-cn=y
CONFIG_PACKAGE_luci-i18n-opkg-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ttyd-zh-cn=y
CONFIG_PACKAGE_luci-i18n-upnp-zh-cn=y
```