{ config, lib, pkgs, ... }:

let
  configFish = builtins.readFile ./config.fish;

  func_fish_greeting = builtins.readFile ./functions/fish_greeting.fish;
  func_fish_prompt = builtins.readFile ./functions/fish_prompt.fish;
  func_fish_right_prompt = builtins.readFile ./functions/fish_right_prompt.fish;
  func_fish_mode_prompt = builtins.readFile ./functions/fish_mode_prompt.fish;
  func_fish_user_key_bindings = builtins.readFile ./functions/fish_user_key_bindings.fish;

  func_redo = builtins.readFile ./functions/redo.fish;
in
{
  programs = {
    fish = {
      enable = true;
      plugins = [
        { name = "bass"; src = pkgs.fishPlugins.bass.src; }
        { name = "tide"; src = pkgs.fishPlugins.tide.src; }
      ];
      interactiveShellInit = configFish;
      functions = {
        fish_greeting = func_fish_greeting;
        #fish_prompt = func_fish_prompt;
        #fish_right_prompt = func_fish_right_prompt;
        #fish_mode_prompt = func_fish_mode_prompt;
        fish_user_key_bindings = func_fish_user_key_bindings;
	redo = func_redo;
      };
    };
  };
}
