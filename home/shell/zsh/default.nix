{ ... }: {
  imports = [ ./env.nix ./settings.nix ./aliases.nix ];
  programs.zsh = { enable = true; };
}
