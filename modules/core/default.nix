{ self, nixpkgs, ... }:

{
  imports = [
    ./bootloader.nix
    ./network.nix
    ./user.nix
    ./system.nix
    ./xserver.nix
  ];
}