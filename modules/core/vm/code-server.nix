{ config, pkgs, ... }:

{
  # -------------------------- #
  # CODE-SERVER SETUP SETTINGS #
  # -------------------------- #
  services.code-server = {
    enable = true;
    user = "mr";
    group = "users";
    auth = "password";
    host = "192.168.0.99";
    port = 4444;
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
    code-server
  ];
}