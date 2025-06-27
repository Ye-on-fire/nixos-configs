{ config, pkgs, ...}:
{
  imports = [
    ./system-packages.nix
    ./fonts.nix
    ./gnome.nix
    ./pipewire.nix
    ./locale.nix
  ];
}
