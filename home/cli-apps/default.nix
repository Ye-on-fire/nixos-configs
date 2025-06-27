{ config, pkgs, ...}:
{
  imports = [
    ./git.nix
    ./zoxide.nix
    ./yazi.nix
    ./fastfetch
  ];
}
