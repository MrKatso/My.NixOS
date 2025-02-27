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

  # --------------------- #
  # KERNEL SYSTEM OPTIONS #
  # --------------------- #
  boot.kernelPackages = pkgs.linuxPackages_latest;
}