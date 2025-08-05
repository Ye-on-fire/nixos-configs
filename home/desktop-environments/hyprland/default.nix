{ ... }: {
  imports = [ ./keybindings.nix ./general.nix ./waybar ./swww.nix ];
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
    };
  };
}
