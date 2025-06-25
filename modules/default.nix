{ config, pkgs, ...}:
{
  imports = [
    ./system-packages.nix
    ./gnome.nix
    ./pipewire.nix
  ];
}
