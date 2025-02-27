{ config, usernm, ... }:

{
  # --------------- #
  # AUTOMATED LOGIN #
  # --------------- #
  services.getty.autologinUser = "${usernm}";
}