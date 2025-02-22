{ pkgs, ... }:

{
  ## Network main settings
  networking = {
    hostName = "FSociety";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
      ];
      # allowedUDPPorts = [];
    };
  };
  # Other packages
  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}