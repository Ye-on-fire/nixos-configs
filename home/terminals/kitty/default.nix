{ ... }:
{
  imports = [ ./settings.nix ./styles.nix ];
  programs.kitty = {
    enable = true;
  };
}
