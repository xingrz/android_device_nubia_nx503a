#!/system/bin/sh

if [ ! -d "/data/tp" ]; then
    mkdir /data/tp
    chmod 0775 /data/tp
    chown system:system /data/tp
else
    rm /data/tp/*
fi

SYSFS_SYNAPTICS="/sys/bus/i2c/devices/2-0022/input/input0/0dbutton"
SYSFS_CYTTSP4="/sys/bus/ttsp4/drivers/cyttsp4_btn/cyttsp4_btn.main_ttsp_core/button"

# Synaptics
if [ -e $SYSFS_SYNAPTICS ]; then
    chown system:system $SYSFS_SYNAPTICS
    ln -s $SYSFS_SYNAPTICS /data/tp/keypad_enable
fi

# Cyttsp4
if [ -e $SYSFS_CYTTSP4 ]; then
    chown system:system $SYSFS_CYTTSP4
    ln -s $SYSFS_CYTTSP4 /data/tp/keypad_enable
fi
