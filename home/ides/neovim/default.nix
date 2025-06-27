{ config, pkgs, ...}:
{
  imports = [
    ./colorscheme.nix
    ./options.nix
    ./plugins
  ];
  programs.nixvim = {
    enable = true;
    clipboard.providers.wl-copy.enable = true;
  };
}
