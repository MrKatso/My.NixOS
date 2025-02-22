{ self, pkgs, lib, ... }:

{
  ## Flake init:
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  ## Main packages:
  environment.systemPackages = with pkgs; [
    wget
    curl
    git
  ];

  ## Main system settings:
  # Location settings
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
  # System major settings
  nixpkgs.config.allowUnfree = true;
  virtualisation.vmware.guest.enable = true;
  system.stateVersion = "24.11";
}