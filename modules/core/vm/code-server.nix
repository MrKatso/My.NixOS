{ pkgs, usernm, ... }:

{
  # -------------------------- #
  # CODE-SERVER SETUP SETTINGS #
  # -------------------------- #
  services.code-server = {
    enable = true;
    user = "${usernm}";
    group = "users";
    auth = "password";
    host = "0.0.0.0";
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
