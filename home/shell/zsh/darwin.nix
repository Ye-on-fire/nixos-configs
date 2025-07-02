{ ... }: {
  imports = [ ./settings.nix ./aliases-darwin.nix ];
  programs.zsh = { enable = true; };
}
