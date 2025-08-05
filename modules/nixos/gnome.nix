{ pkgs, ... }:
{
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  #install gnome related pkgs
  environment.systemPackages = with pkgs; [
    gnome-tweaks
  ];
}
