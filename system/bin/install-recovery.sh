#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/recovery:15923712:03a5377acf476363f653f21804c0c0c39e0494df; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/boot:10940928:37c98a1b620b2cc12bdd6ca0041c9437cd0a97d6 EMMC:/dev/block/recovery 03a5377acf476363f653f21804c0c0c39e0494df 15923712 37c98a1b620b2cc12bdd6ca0041c9437cd0a97d6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
