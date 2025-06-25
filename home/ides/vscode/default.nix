{ config, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      mhutchie.git-graph
      jnoortheen.nix-ide
      sainnhe.gruvbox-material
    ];
  };
}
