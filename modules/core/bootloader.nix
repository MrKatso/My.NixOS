{ pkgs, ... }:

{
  ## Bootloader main settings
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
}