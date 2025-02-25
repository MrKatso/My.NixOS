{ self, nixpkgs, ... }:

{
  # -------------------------------------- #
  # MASTER IMPORTS FOR CORE SYSTEM MODULES #
  # -------------------------------------- #
  imports = [
    ./bootloader.nix
    ./network.nix
    ./system.nix
    ./user.nix
    ./xserver.nix
  ];
}