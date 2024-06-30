{ config, lib, pkgs, ... }:

{
  imports = [
    ./custom-mappings.nix
    ./plugins.nix
    ./chadrc.nix
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
