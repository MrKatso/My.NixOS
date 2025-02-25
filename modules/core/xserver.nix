{ pkgs, usernm, ... }:

{
  # ------------------- #
  # TTY KEYMAP SETTINGS #
  # ------------------- #
  console = {
    keyMap = "us-acentos";
  };

  # ---------------- #
  # X11 ALL SETTINGS #
  # ---------------- #
  services = {
    xserver = {
      enable = false;
      xkb = {
        layout = "us";
        variant = "intl";
      };
    };
  };

  # ---------------------- #
  # INPUT DEVICES SETTINGS #
  # ---------------------- #
  services = {
    libinput = {
      enable = true;
    };
  };

  # ------------------------------------ #
  # TO PREVENT GETTING STUCK AT SHUTDOWN #
  # ------------------------------------ #
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}