{ config, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    # set kitty font
    font.name = "Maple Mono NF CN";
    font.size = 18;
    # zsh 
    shellIntegration.enableZshIntegration = true;
    # theme
    themeFile = "GruvboxMaterialDarkMedium";
    settings = {
      confirm_os_window_close = 0;
      cursor_trail = "1";
      cursor_trail_decay = "0.1 0.4";
    };
  };
}
