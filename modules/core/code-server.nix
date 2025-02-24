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
    port = 1836;
    disableTelemetry = true;
    disableWorkspaceTrust = true;
    disableUpdateCheck = true;
    disableFileDownloads = true;
    disableGettingStartedOverride = true;
  };

  # --------------------------- #
  # CODE-SERVER PACKAGE INSTALL #
  # --------------------------- #
  environment.systemPackages = with pkgs; [
    pkgs.code-server
  ];
}
