{ self, pkgs, lib, ... }:

{
  # --------------------------- #
  # MASTER FLAKE INIT ON SYSTEM #
  # --------------------------- #
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  # --------------------------------- #
  # BASE SYSTEM PACKAGES AND SETTINGS #
  # --------------------------------- #
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    wget
    curl
    git
  ];

  # ------------------------------- #
  # SYSTEM LOCALE AND DATA SETTINGS #
  # ------------------------------- #
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  # ------------------------------------- #
  # SYSTEM VERSION AND TEMPORARY SETTINGS #
  # ------------------------------------- #
  virtualisation.vmware.guest.enable = true;
  system.stateVersion = "24.11";
}