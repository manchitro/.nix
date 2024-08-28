{
  description = "IntelliJ IDEA Ultimate 2020.3.3";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/54c1e44240d8a527a8f4892608c4bce5440c3ecb";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    packages = {
      default = import nixpkgs {
        config = { allowUnfree = true; };
      };
    };
  };
}

