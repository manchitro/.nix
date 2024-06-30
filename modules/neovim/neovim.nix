{ config, lib, pkgs, ... }:

{
  imports = [
    ./custom-mappings.nix
  ];
  
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
    };
  };
  home.file.".config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };
}
