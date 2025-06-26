{ config, pkgs, ... }:

{
  imports = [
    ./shell
    ./ides
    ./cli
    ./terminals
  ];
  # specialArgs = { inherit inputs; };
  home.username = "makoto";
  home.homeDirectory = "/home/makoto";
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs;[
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


  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
