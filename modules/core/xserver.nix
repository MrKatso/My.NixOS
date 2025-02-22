{ pkgs, ... }:

{
  ## Keyboard main settings
  # TTY keymap
  console = {
    useXkbConfig = true;
  };
  # X keymap
  services = {
    xserver = {
      enable = false;
      xkb = {
        layout = "us";
        variant = "altgr-intl";
      };
    };
  };
}
