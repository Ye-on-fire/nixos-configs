{ ... }: {
  imports = [ ./settings.nix ./styles.nix ];
  programs.neovide = { enable = true; };
}
