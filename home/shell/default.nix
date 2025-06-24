{ config, ... }:{
  imports = [
    ./zsh.nix
    ./starship.nix
  ];

  #define environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
