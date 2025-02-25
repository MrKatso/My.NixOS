{ pkgs, ... }:

{
  # ------------------------- #
  # BOOTLOADER SETUP SETTINGS #
  # ------------------------- #
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.supportedFilesystems = [ "ntfs" ];

  # --------------------- #
  # KERNEL SYSTEM OPTIONS #
  # --------------------- #
  boot.kernelPackages = pkgs.linuxPackages_latest;
}