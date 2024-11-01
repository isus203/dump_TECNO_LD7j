#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:b05fa9f8479b78dd5f1231220f6e6d44c65a5cd4; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:48d9e100336f7713076538c2fd3e291309fe372c \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:b05fa9f8479b78dd5f1231220f6e6d44c65a5cd4 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
