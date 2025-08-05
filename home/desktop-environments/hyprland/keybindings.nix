{ ... }: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      #general
      "Super, Q, killactive"
      "Super, V, togglefloating"
      #focus
      "Super, h, movefocus, l"
      "Super, l, movefocus, r"
      "Super, k, movefocus, u"
      "Super, j, movefocus, d"
      #execs
      "Super, T, exec, kitty"
      "Super, E, exec, nautilus"
      "Super, W, exec, zen"
      #Workspaces
      "Super, 1, workspace, 1"
      "Super, 2, workspace, 2"
      "Super, 3, workspace, 3"
      "Super, 4, workspace, 4"
      "Super, 5, workspace, 5"
      "Super, 6, workspace, 6"
      "Super, 7, workspace, 7"
      "Super, 8, workspace, 8"
      "Super, 9, workspace, 9"
      "Super, 0, workspace, 10"
      "Ctrl+Super, Right, workspace, r+1"
      "Ctrl+Super, Left, workspace, r-1"
      #Fullscreen
      "Super, F, fullscreen, 0"
      "Super, D, fullscreen, 1"
    ];
  };
}
