# dotfiles

This repository relies on `chezmoi.io` to manage dotfiles across multiple machines.

In order to install `chezmoi` and apply the latest dotfiles from this repository run
bash```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```
