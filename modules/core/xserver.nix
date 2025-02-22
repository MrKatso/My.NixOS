{ pkgs, ... }:

{
  ## Keyboard main settings
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "altgr-intl";
      };
    };
  };
}
