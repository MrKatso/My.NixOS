{ usernm, hostnm, ... }:

{
  # --------------------------------------------- #
  # MAIN FINAL USER FOR THIS SYSTEM CONFIGURATION #
  # --------------------------------------------- #
  users.users.${usernm} = {
    isNormalUser = true;
    initialPassword = "1234";
    description = "${usernm}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  # ------------------------ #
  # AND SYSTEM ALLOWED USERS #
  # ------------------------ #
  nix.settings.allowed-users = [ "${usernm}" ];
}
