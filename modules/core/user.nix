{ config, pkgs, usernm, hostnm, ... }:

{
  # --------------------------------------------- #
  # MAIN FINAL USER FOR THIS SYSTEM CONFIGURATION #
  # --------------------------------------------- #
  users.users.${usernm} = {
    isNormalUser = true;
    description = "${usernm}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  # --------------- #
  # AUTOMATED LOGIN #
  # --------------- #
  services.getty.autologinUser = "${usernm}";

  # ------------------------ #
  # AND SYSTEM ALLOWED USERS #
  # ------------------------ #
  nix.settings.allowed-users = [ "${usernm}" ];
}