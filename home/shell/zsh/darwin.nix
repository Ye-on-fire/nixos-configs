{ ... }: {
  imports = [ ./env-darwin.nix ./settings.nix ./aliases-darwin.nix ];
  programs.zsh = { enable = true; };
}
