{ config, lib, pkgs, ... }:

let
  kittyConf = builtins.readFile ./kitty.conf
in
{
  programs.kitty = {
    enable = true;
    extraConfig = kittyConf;
  };
  home.file.".config/kitty/mocha.conf".source = ./mocha.conf;
}
