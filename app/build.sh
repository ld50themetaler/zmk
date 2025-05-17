CONFIG=./config

OUTPUT=trabo_tsuki_right_central.uf2
west build -b ble_micro_pro -- -DSHIELD=torabo_tsuki_right -DSNIPPET=studio-rpc-usb-uart -DCONFIG_ZMK_SPLIT_ROLE_CENTRAL=y -DZMK_CONFIG=$CONFIG
mv build/zephyr/zmk.uf2 ./$OUTPUT

OUTPUT=trabo_tsuki_left_peripheral.uf2
west build -b ble_micro_pro -- -DSHIELD=torabo_tsuki_left -DSNIPPET=studio-rpc-usb-uart -DZMK_CONFIG=$CONFIG
mv build/zephyr/zmk.uf2 ./$OUTPUT
