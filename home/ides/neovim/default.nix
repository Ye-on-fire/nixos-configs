{ ... }:
{
  programs.neovim.enable = true;
  #This uses astronvim as neovim config, unlike the nixvim
  home.file.".config/nvim" = {
    source = ./nvim;
  };
}
