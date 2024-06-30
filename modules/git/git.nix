{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Sazid";
    userEmail = "initialsaremsu@gmail.com";
  };
}
