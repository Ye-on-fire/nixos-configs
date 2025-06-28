{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      mhutchie.git-graph
      jnoortheen.nix-ide
      sainnhe.gruvbox-material
      brettm12345.nixfmt-vscode
      yzhang.markdown-all-in-one
      arrterian.nix-env-selector
    ];
  };
}
