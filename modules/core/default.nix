{ self, nixpkgs, ... }:

{
  imports = [
    ./bootloader.nix
    ./network.nix
    ./user.nix
    ./code-server.nix
    ./system.nix
    ./xserver.nix
  ];
}
