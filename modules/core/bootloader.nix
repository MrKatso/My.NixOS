{ pkgs, ... }:

{
  # ------------------------- #
  # BOOTLOADER SETUP SETTINGS #
  # ------------------------- #
  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.configurationLimit = 10;
    efi.canTouchEfiVariables = true;
  };

  # ------------------------ #
  # BOOT FILESYSTEMS OPTIONS #
  #    IN DUAL BOOT ONLY     #
  # ------------------------ #
  boot.supportedFilesystems = [ "ntfs" ];

  # --------------------- #
  # KERNEL SYSTEM OPTIONS #
  # --------------------- #
  boot.kernelPackages = pkgs.linuxPackages_latest;
}