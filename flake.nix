{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    old-nixpkgs = {
      url = "github:NixOS/nixpkgs/54c1e44240d8a527a8f4892608c4bce5440c3ecb";
    };
  };

  outputs = { self, nixpkgs, old-nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      default = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/default/configuration.nix
          inputs.home-manager.nixosModules.default
          {
            environment.systemPackages = with old-nixpkgs.legacyPackages.x86_64-linux; [
              jetbrains.idea-ultimate
            ];
          }
        ];
      };
    };
  };
}

