{ ... }:
{
  imports = [ ./settings.nix ./styles.nix ];
  programs.kitty = {
    enable = true;
    settings = {
      macos_titlebar_color = "background";
    };
  };
}
