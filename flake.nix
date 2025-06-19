{
  description = "Modular NixOS system using flakes and multiple nixpkgs channels";

  inputs = 
    (import ./inputs/default.nix) // {
      flake-utils.url = "github:numtide/flake-utils";
      # Add other inline inputs if needed
    };

  # ...rest of your flake...
}