{ ... }: {
  imports = [ ./keybindings.nix ./general.nix ./waybar ];
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
    };
  };
}
