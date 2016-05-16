CyanogenMod 13.0 for ZTE Nubia Z5S (`nx503a`)
==========

## How to compile

1.  Prepare your [CyanogenMod](https://github.com/CyanogenMod/android) source tree (branch `cm-13.0`)
2.  Edit your `.repo/local_manifests/roomservice.xml`:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>

      <project name="nx503a-dev/android_device_zte_nx503a" path="device/zte/nx503a" remote="github" revision="cm-13.0" />
      <project name="nx503a-dev/android_kernel_zte_nx503a" path="kernel/zte/nx503a" remote="github" revision="cm-13.0" />
      <project name="nx503a-dev/android_vendor_zte_nx503a" path="vendor/zte/nx503a" remote="github" revision="cm-13.0" />

      <project name="CyanogenMod/android_external_busybox" path="external/busybox" remote="github" revision="cm-13.0" />
      <project name="omnirom/android_bootable_recovery" path="bootable/recovery-twrp" remote="github" revision="android-6.0" />

    </manifest>
    ```

3.  Apply patches:

    ```sh
    patch frameworks/base/data/keyboards/Generic.kl \
      device/zte/nx503a/patches/keyboards.patch
    ```

4.  Build!

    ```sh
    . build/envsetup.sh
    breakfast nx503a
    make bacon
    ```

## Known issues

* Not compatible with China Telecom (CDMA2000).
* Google Camera (which using `Camera2` API) can't take photos -- use Snap Camera instead.
