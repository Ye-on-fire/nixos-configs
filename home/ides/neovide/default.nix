{ ... }:
{
  imports = [./settings.nix];
  programs.neovide = {
    enable = true;
  };
}
