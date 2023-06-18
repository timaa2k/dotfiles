{
  description = "Tim's darwin system";

  inputs = {
    # Package sets
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-23.05-darwin";
    nixpkgs-unstable.url = github:NixOS/nixpkgs/nixpkgs-unstable;

    # Environment/system management
    darwin.url = "github:lnl7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs-unstable";
  };

  outputs = { self, darwin, nixpkgs, ... }@inputs:
  let

    inherit (darwin.lib) darwinSystem;
    inherit (inputs.nixpkgs-unstable.lib) attrValues makeOverridable optionalAttrs singleton;

    # Configuration for `nixpkgs`
    nixpkgsConfig = {
      config = { allowUnfree = true; };
      overlays = attrValues self.overlays ++ singleton (
        # Sub in x86 version of packages that don't build on Apple Silicon yet
        final: prev: (optionalAttrs (prev.stdenv.system == "aarch64-darwin") {
          inherit (final.pkgs-x86)
            nix-index
            niv
            ;
        })
      );
    };
  in
  {
    # Overlays ---------------------------------------------------------------

    overlays = {
    # Overlays to add various packages into package set
      # applications = final: prev: {
      #   applications = import ./overlays/applications.nix { inherit (prev) pkgs; };
      # };

    pkgs-unstable = _: prev: {
      pkgs-unstable = import inputs.nixpkgs-unstable {
        inherit (prev.stdenv) system;
        inherit (nixpkgsConfig) config;
        overlays = [(import ./overlays/applications.nix)];
      };
    };

    # Overlay useful on Macs with Apple Silicon
      apple-silicon = final: prev: optionalAttrs (prev.stdenv.system == "aarch64-darwin") {
        # Add access to x86 packages system is running Apple Silicon
        pkgs-x86 = import inputs.nixpkgs-unstable {
          system = "x86_64-darwin";
          inherit (nixpkgsConfig) config;
        };
      };
    };

    # My `nix-darwin` configs

    darwinConfigurations = rec {
      mba = darwinSystem {
        system = "aarch64-darwin";
        modules = [
          # Main `nix-darwin` config
          ./hosts/mba.nix
        ];
      };
    };
  };
}
