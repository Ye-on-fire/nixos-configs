{ pkgs, ... }: {
  imports = [
    ./shell
    ./ides
    ./cli-apps
    ./gui-apps
    ./desktop-environments
    ./terminals
    ./stylix
  ];
  # specialArgs = { inherit inputs; };
  home.username = "makoto";
  home.homeDirectory = "/home/makoto";
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    ripgrep
    eza
    fzf
    starship
    fastfetch
    btop
    yazi
    gh
    fd
    lazygit
    nyancat
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
