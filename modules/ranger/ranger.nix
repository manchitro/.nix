{ config, lib, pkgs, ... }:

let
  rifle_conf = builtins.readFile ./rifle.conf;
  rc_conf = builtins.readFile ./rc.conf;
in
{
  imports = [
    ./rifle.nix
  ];
  programs = {
    ranger = {
      enable = true;
      extraConfig = rc_conf;
    };
  };
  home.file.".config/ranger/commands.py".source = ./commands.py;
  home.file.".config/ranger/scope.sh".source = ./scope.sh;
}
