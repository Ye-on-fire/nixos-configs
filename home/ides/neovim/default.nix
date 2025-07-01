{ ... }:
{
  programs.neovim.enable = true;
  #This uses astronvim as neovim config, unlike the nixvim
  home.file.".config/nvim/init.lua".source = ./nvim/init.lua;
  home.file.".config/nvim/lua".source = ./nvim/lua;
}
