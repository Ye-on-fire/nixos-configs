{ config, ... }:{
  imports = [
    ./zsh-darwin.nix
    ./starship.nix
    ./fzf.nix
  ];

  #define environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
