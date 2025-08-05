{ ... }: {
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 3;
      gaps_out = 18;
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
    };
  };
}
