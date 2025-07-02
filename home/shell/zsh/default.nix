{ ... }: {
  imports = [ ./settings.nix ./aliases.nix ];
  programs.zsh = { enable = true; };
}
