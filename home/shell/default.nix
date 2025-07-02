{ ... }: {
  imports = [ ./zsh ./starship.nix ./fzf.nix ./direnv.nix ];

  #define environment variables
  home.sessionVariables = { EDITOR = "nvim"; };
}
