{ config, pkgs, ... }:
{
  programs.kitty = {
    # set kitty font
    font.name = "Maple Mono NF CN";
    font.size = 18;
    # theme
    themeFile = "GruvboxMaterialDarkMedium";
  };
}
