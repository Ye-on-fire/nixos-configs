{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./cava.nix
  ];
  stylix.enable = true;
  # stylix.targets.gnome.enable = false;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-frappe.yaml";
}
