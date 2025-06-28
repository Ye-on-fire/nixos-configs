{ config, pkgs, ...}:
{
  imports = [
    ./eza.nix
    ./git.nix
    ./zoxide.nix
    ./yazi.nix
    ./fastfetch
  ];
}
