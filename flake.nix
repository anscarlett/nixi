{
  description = "NixOS installation tool with modular configuration";

  inputs = {
    # NixOS 25.05 stable channel
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    # Home Manager for user environment management
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Disko for declarative disk partitioning
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Impermanence for ephemeral root filesystem
    impermanence = {
      url = "github:nix-community/impermanence";
    };
  };

  outputs = { self, nixpkgs, home-manager, disko, impermanence, ... }@inputs: {
    # NixOS configurations will go here
    nixosConfigurations = {};

    # Home Manager configurations will go here
    homeConfigurations = {};
  };
}
