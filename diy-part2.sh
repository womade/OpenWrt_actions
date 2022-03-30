#!/bin/bash
#
# Copyright (c) 1998-2021 中國遠徵 <https://i.ssss.fun>
#
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Hostname
sed -i 's/OpenWrt/SuperNet/g' package/base-files/files/bin/config_generate

# Timezone
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate

# Modify themes
wget --no-check-certificate https://raw.githubusercontent.com/womade/OpenWrt_actions/main/modify/themes/bootstrap/footer.htm -O package/feeds/luci/luci-theme-bootstrap/luasrc/view/themes/bootstrap/footer.htm

# Modify banner
wget --no-check-certificate https://raw.githubusercontent.com/womade/OpenWrt_actions/main/modify/banner/banner -O package/base-files/files/etc/banner

# Modify wireless
sed -i 's/OpenWrt/SuperNet/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
