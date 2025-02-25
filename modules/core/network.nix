{ pkgs, hostnm, ... }:

{
  # ---------------------- #
  # NETWORK SETUP SETTINGS #
  # ---------------------- #
  networking = {
    hostName = "${hostnm}";
    networkmanager.enable = true;
    nameservers = [
      "8.8.8.8"
      "8.8.4.4"
      "1.1.1.1"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        4444
      ];
      allowedUDPPorts = [

      ];
    };
  };
  
  # ------------------------ #
  # NETWORK PACKAGES INSTALL #
  # ------------------------ #
  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}