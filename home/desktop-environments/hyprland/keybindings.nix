{ ... }: {
  wayland.windowManager.hyprland.settings = {
    "$mod" = "Super";

    bind = [
      #general
      "$mod, Q, killactive"
      "$mod, V, togglefloating"
      #focus
      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, k, movefocus, u"
      "$mod, j, movefocus, d"
      #execs
      "$mod, T, exec, kitty"
      "$mod, E, exec, nautilus"
      "$mod, W, exec, zen"
      #Workspaces
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"
      "Ctrl+$mod, Right, workspace, r+1"
      "Ctrl+$mod, Left, workspace, r-1"
      "Shift+$mod, Right, movetoworkspace, r+1"
      "Shift+$mod, Left, movetoworkspace, r-1"
      "$mod+SHIFT, 1, movetoworkspace, 1"
      "$mod+SHIFT, 2, movetoworkspace, 2"
      "$mod+SHIFT, 3, movetoworkspace, 3"
      "$mod+SHIFT, 4, movetoworkspace, 4"
      "$mod+SHIFT, 5, movetoworkspace, 5"
      "$mod+SHIFT, 6, movetoworkspace, 6"
      "$mod+SHIFT, 7, movetoworkspace, 7"
      "$mod+SHIFT, 8, movetoworkspace, 8"
      "$mod+SHIFT, 9, movetoworkspace, 9"
      "$mod+SHIFT, 0, movetoworkspace, 10"
      #Fullscreen
      "$mod, F, fullscreen, 0"
      "$mod, D, fullscreen, 1"
    ];
    bindm = [ "$mod, mouse:272, movewindow" "$mod, mouse:273, resizewindow" ];
    bindel = [
      ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    ];
    binde = [
      "$mod, Minus, splitratio, -0.1"
      "$mod, Equal, splitratio, +0.1"
      "$mod, Semicolon, splitratio, -0.1"
      "$mod, Apostrophe, splitratio, +0.1"
    ];
  };
}
