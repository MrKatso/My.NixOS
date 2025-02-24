{ config, pkgs, lib, ... }:

{
  # ------------------------- #
  # MASTER VMs SYSTEM IMPORTS #
  # ------------------------- #
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  # ------------------ #
  # SSH SETUP SETTINGS #
  # ------------------ #
  services.openssh = {
    enable = true;
    openFirewall = false;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = true;
      PermitRootLogin = "yes";
      # AllowUsers = [ "mr" ];
      # AllowGroups = [ "networkmanager" "wheel" ];
    };
  };
}
