{ config, pkgs, lib, ... }:

{
  # ------------------------- #
  # MASTER VMs SYSTEM IMPORTS #
  # ------------------------- #
  imports = [
    ./../../modules/core/vm/code-server.nix
    ./../../modules/core
    ./hardware-configuration.nix
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
    };
  };

  # -------------------- #
  # GNUPG SETUP SETTINGS #
  # -------------------- #
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}