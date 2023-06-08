{ pkgs, ... }:
#let
#   neovimWithPlugins = pkgs.neovim.override {
#      vimAlias = true;
#      viAlias = true;
#      withNodeJs = true;
#      configure.packages.myVimPackages = with pkgs.vimPlugins; {
#        start = [
#          vim-nix
#          vim-airline
#          vim-airline-themes
#          vim-colorschemes

#          # IDE
#          echodoc
#          vim-sensible
#          nerdtree
#          nerdtree-git-plugin
#          fugitive
#          vim-gitgutter
#          vim-commentary
#          vim-tmux-navigator
#          vim-trailing-whitespace
#          fzf-vim
#          coc-nvim
#          # FIXME(tim): Coc plugins are currently not in compiled form.
#          # The workaround is to install them manually via :CocInstall
#          # https://github.com/neoclide/coc.nvim/issues/559#issuecomment-546155113
#          #coc-pairs
#          #coc-prettier
#          #coc-go
#          #coc-python
#          #coc-json
#          #coc-yaml

#          # Utils
#          surround
#          vim-css-color

#          # Language Specific Plugins
#          vim-nix
#          vim-terraform
#          vim-toml
#        ];
#      };
#    };
#in
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  services.nix-daemon.enable = true;

  environment.systemPackages = with pkgs; [
    youtube-dl
    kitty
    tmux
    fzf
    git
    curl
    findutils
    coreutils
    less
    jq
    yq
    tree
    unzip
    htop
    gnupg
    neovim
    ripgrep
    delta
    sad
    fd
    lua
    nodejs
    go
  ];

  programs.bash.enable = true;
  environment.shells = with pkgs; [ bashInteractive ];
}
