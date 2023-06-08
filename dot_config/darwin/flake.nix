{
  description = "Tim's darwin system";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-22.11-darwin";
    darwin.url = "github:lnl7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, darwin, nixpkgs }: {
    darwinConfigurations."mba" = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [ ./hosts/mba.nix ];
    };
  };
}
