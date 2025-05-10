{ config, pkgs, lib, usernm, ... }:

{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  services.gnome.gnome-keyring.enable = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
        user = "${usernm}";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    sway
    greetd.greetd
  ];
}