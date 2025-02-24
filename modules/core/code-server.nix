{ config, pkgs, ... }:

{
  # -------------------------- #
  # CODE-SERVER SETUP SETTINGS #
  # -------------------------- #
  services.code-server = {
    enable = true;
    user = "mr";
    group = "wheel";
    auth = "password";
    port = 4444;
    disableTelemetry = true;
    disableWorkspaceTrust = true;
    # disableUpdateCheck = true;
    # disableFileDownloads = true;
  };

  # --------------------------- #
  # CODE-SERVER PACKAGE INSTALL #
  # --------------------------- #
  environment.systemPackages = with pkgs; [
    pkgs.code-server
  ];
}
