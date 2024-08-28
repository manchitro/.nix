{ config, lib, pkgs, ... }:

let
  hyprConf = builtins.readFile ./hyprland.conf;
in
{
  home.file.".config/hypr/hyrpland.conf".source = hyprConf;
}
