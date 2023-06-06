# dotfiles

This repository relies on [chezmoi.io](https://chezmoi.io) to manage dotfiles across multiple machines and operating systems.

In order to automatically install `chezmoi` and apply the latest dotfiles run the following command.
```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply timaa2k
```
