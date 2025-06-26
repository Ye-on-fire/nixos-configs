{ config, pkgs, ...}:
{
  programs.nixvim = {
    enable = true;
    colorschemes.gruvbox-material.enable = true;
    clipboard.providers.wl-copy.enable = true;
    plugins = {
      lualine.enable = true;
    };
  };
}
