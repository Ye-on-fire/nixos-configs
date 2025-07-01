{ pkgs, ... }: {
  imports =
    [ 
      ./shell/darwin.nix
      ./cli-apps/darwin.nix
    ];
  home.username = "makoto";
  home.homeDirectory = "/Users/makoto";
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    ripgrep
    neovim
    fzf
    starship
    fastfetch
    btop
    yazi
    fd
    lazygit
    nyancat
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
