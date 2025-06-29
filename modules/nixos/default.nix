{ ... }: {
  imports = [
    ./system-packages.nix
    ./fcitx5.nix
    ./fonts.nix
    ./gnome.nix
    ./pipewire.nix
    ./locale.nix
    ./hyprland.nix
  ];
}
