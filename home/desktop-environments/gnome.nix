{ pkgs, ...}:
{
  #gnome extensions
  home.packages = with pkgs.gnomeExtensions; [
    dash-to-dock
    user-themes
    appindicator
  ];
}
