#!/system/bin/sh

if [ ! -d "/data/tp" ]; then
    mkdir /data/tp
    chmod 0775 /data/tp
    chown system:system /data/tp
else
    rm /data/tp/*
fi

# Synaptics
if [ -e /sys/bus/i2c/devices/2-0022/input/input0/0dbutton ]; then
    chown system:system /sys/bus/i2c/devices/2-0022/input/input0/0dbutton
    ln -s /sys/bus/i2c/devices/2-0022/input/input0/0dbutton /data/tp/keypad_enable
fi

# Legcy path: I don't know how to implement it for Cyttsp4
if [ -e /proc/touchpanel/keypad_enable ]; then
    chown system:system /proc/touchpanel/keypad_enable
    ln -s /proc/touchpanel/keypad_enable /data/tp/keypad_enable
fi
