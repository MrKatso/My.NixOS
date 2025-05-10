{ config, pkgs, lib, usernm ... }:

{
  services.greetd.enable = true;
  services.greetd.defaultSession = {
    command = "sway";
    user = "${usernm}";
  };

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  environment.systemPackages = with pkgs; [
    sway;
  ];
}