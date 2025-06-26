{ config, pkgs, ...}:
{
  imports = [
    ./nixvim.nix
  ];

  # programs.neovim = {
  #   enable = true;
  #   defaultEditor = true;
  # };
}
