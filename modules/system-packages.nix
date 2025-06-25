{ config, pkgs, ...}:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  programs.git.enable = true;
  # Install firefox.
  programs.firefox.enable = true;
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
   vim 
   wget
   neovim
  ];
}
