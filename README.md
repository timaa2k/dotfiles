# dotfiles

## Using chezmoi for configuration management

This repository relies on [chezmoi.io](https://chezmoi.io) to manage dotfiles across multiple machines and operating systems.

In order to automatically install `chezmoi` and apply the latest dotfiles run the following command.
```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply timaa2k
```

## Using Nix for package management

### Installation

```
nix-install
nix-darwin-install
nix-rebuild-switch
```

Then set the default shell to nix `bash`
```
chsh -s /run/current-system/sw/bin/bash
```

### Removal

```
nix-darwin-uninstall
```

Nix itself must be removed manually according to the [reference manual](https://nixos.org/manual/nix/stable/installation/uninstall.html).
