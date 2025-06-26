{ config, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    # set kitty font
    font.name = "Maple Mono NF CN";
    font.size = 14;
    # zsh 
    shellIntegration.enableZshIntegration = true;
    # theme
    themeFile = "GruvboxMaterialDarkMedium";
    settings = {
      confirm_os_window_close = 0;
    };
  };
}
