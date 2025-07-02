{ ... }: {
  imports = [ ./zsh ./starship.nix ./fzf.nix ];

  #define environment variables
  home.sessionVariables = { EDITOR = "nvim"; };
}
