{ pkgs, ... }:

{
  ## Keyboard main settings
  services = {
    xserver = {
      # enable = false;
      xkb = {
        layout = "us";
        variant = "altgr-intl";
      };
    };
  };
}