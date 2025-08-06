{ ... }: {
  imports = [ ./execs.nix ./keybindings.nix ./general.nix ./hyprpanel.nix ./swww.nix ];
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
    };
  };
}
