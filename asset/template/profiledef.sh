#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="ezarch-i3wm"
iso_label="EZARCH-I3WM_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%y%m%d)"
iso_publisher="Ezarcher Linux <https://sourceforge.net/projects/ezarch/>"
iso_application="Ezarcher DVD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%y%m%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.grub')
pacman_conf="./pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-b' '1M')
bootstrap_tarball_compression=(zstd)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/etc/sudoers"]="0:0:440"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/ezmaint"]="0:0:755"
  ["/usr/local/bin/grubinstall.sh"]="0:0:755"
  ["/usr/local/bin/ezarch.bios"]="0:0:755"
  ["/usr/local/bin/ezarch.uefi"]="0:0:755"
  ["/etc/skel/.config/i3/autostart"]="0:0:755"
  ["/etc/skel/.config/i3/bin/i3wm-up"]="0:0:755"
  ["/etc/skel/.config/i3/bin/i3wm-up-applet"]="0:0:755"
  ["/etc/skel/.config/i3/bin/i3wm-up-compositor"]="0:0:755"
  ["/etc/skel/.config/i3/bin/i3wm-up-keybind"]="0:0:755"
  ["/etc/skel/.config/i3/bin/i3wm-up-panel"]="0:0:755"
  ["/etc/skel/.config/i3/bin/i3wm-up-wallpaper"]="0:0:755"
  ["/etc/skel/.config/i3/bin/i3wm-up-xsettings"]="0:0:755"
)
