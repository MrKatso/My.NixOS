{ config, pkgs, lib, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32bits = true;
  };

  hardware.graphics.extraPackages = with pkgs; [
    rocmPackages.clr
  ];
}