{ inputs, pkgs, ...}:
{
  #set subsititue
  nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  programs.git.enable = true;
  # Install firefox.
  programs.firefox.enable = true;
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    mihomo-party
    vim 
    wget
    neovim
    git
    inputs.zen-browser.packages."${system}".default
  ];
}
