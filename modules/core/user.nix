{ pkgs, config, lib, ... }:

{
  ## Main users
  # MR (Mr.Robot)
  users.users.mr = {
    isNormalUser = true;
    description = "Mr.Katso";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
  # Ainda nao sei para que serve
  nix.settings.allowed-users = [ mr ];
}