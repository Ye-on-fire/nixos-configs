{ ... }: {
  programs.hyprpanel = {
    enable = true;
    systemd.enable = true;
    settings = {
      bar.battery.label = true;
      bar.bluetooth.label = false;
      bar.clock.format = "%H:%M:%S";
      bar.launcher.autoDetectIcon = true;
      bar.workspaces.show_icons = true;
      theme.bar.transparent = true;
      bar.layouts = {
        "0" = {
          left = [ "dashboard" "workspaces" "systray" ];
          middle = [ "clock" "windowtitle" ];
          right = [ "volume" "network" "bluetooth" "notifications" ];
        };
      };
      theme.font = {
        name = "Maple Mono NF CN";
        size = "12px";
      };
      scalingPriority = "hyprland";
    };
  };
}
