{ pkgs, ... }:

{
  # ------------------------ #
  # BOOT FILESYSTEMS OPTIONS #
  #    IN DUAL BOOT ONLY     #
  # ------------------------ #
  boot.supportedFilesystems = [ "ntfs" ];

  # ---------------------------- #
  # NTFS NEEDED PACKAGES INSTALL #
  # ---------------------------- #
  environment.systemPackages = with pkgs; [
    ntfs-3g
  ];
}