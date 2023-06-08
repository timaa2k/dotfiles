nix build ~/.config/darwin\#darwinConfigurations.mba.system
./result/sw/bin/darwin-rebuild switch --flake ~/.config/darwin
