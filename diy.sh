#!/bin/bash
#=================================================
#=================================================
# oaf
git clone https://github.com/destan19/OpenAppFilter.git package/destan19
# passwall
git clone https://github.com/Lienol/openwrt-package package/lienol
# openclash
git clone https://github.com/vernesong/OpenClash.git package/vernesong
# ssrplus
git clone https://github.com/fw876/helloworld package/ssrplus
# adguardhome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome package/rufengsuixing

./scripts/feeds update -a
./scripts/feeds install -a

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
