{ ... }: {
  wayland.windowManager.hyprland.settings = {
    monitor=",preferred,auto,auto";
    general = {
      gaps_in = 3;
      gaps_out = 15;
      border_size = 2;
      resize_on_border = true;
      layout = "dwindle";
      allow_tearing = true;
    };
    input = {
      kb_layout = "us";
      touchpad = {
        natural_scroll = "yes";
        disable_while_typing = true;
        drag_3fg = 1;
      };
    };
    gestures = {
      workspace_swipe = true;
      workspace_swipe_touch = true;
      workspace_swipe_fingers = 4;
      workspace_swipe_cancel_ratio = 0.2;
      workspace_swipe_min_speed_to_force = 5;
      workspace_swipe_direction_lock = true;
      workspace_swipe_create_new = true;
    };
    misc = {
      vfr = true;
      vrr = 1;
      disable_hyprland_logo = true;
      force_default_wallpaper = 0;
      animate_manual_resizes = false;
      animate_mouse_windowdragging = false;
    };
    decoration = {
      rounding = 14;
      blur = {
        enabled = true;
        xray = true;
        special = false;
        new_optimizations = true;
        size = 14;
        passes = 4;
        brightness = 1;
        noise = 1.0e-2;
        contrast = 1;
        popups = true;
        popups_ignorealpha = 0.6;
      };
      dim_inactive = false;
      dim_strength = 0.1;
      dim_special = 0;
    };
    animations = {
      enabled = "yes";
      bezier = [
        "easeOutQuint,0.23,1,0.32,1"
        "easeInOutCubic,0.65,0.05,0.36,1"
        "linear,0,0,1,1"
        "almostLinear,0.5,0.5,0.75,1.0"
        "quick,0.15,0,0.1,1"
      ];
      animation = [
        "global, 1, 10, default"
        "border, 1, 5.39, easeOutQuint"
        "windows, 1, 4.79, easeOutQuint"
        "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
        "windowsOut, 1, 1.49, linear, popin 87%"
        "fadeIn, 1, 1.73, almostLinear"
        "fadeOut, 1, 1.46, almostLinear"
        "fade, 1, 3.03, quick"
        "layers, 1, 3.81, easeOutQuint"
        "layersIn, 1, 4, easeOutQuint, fade"
        "layersOut, 1, 1.5, linear, fade"
        "fadeLayersIn, 1, 1.79, almostLinear"
        "fadeLayersOut, 1, 1.39, almostLinear"
        "workspaces, 1, 1.94, almostLinear, fade"
        "workspacesIn, 1, 1.21, almostLinear, fade"
        "workspacesOut, 1, 1.94, almostLinear, fade"
      ];
    };
  };
}
