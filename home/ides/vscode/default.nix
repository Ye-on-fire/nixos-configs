{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      mhutchie.git-graph
      jnoortheen.nix-ide
      brettm12345.nixfmt-vscode
      yzhang.markdown-all-in-one
      arrterian.nix-env-selector
      asvetliakov.vscode-neovim
    ];
  };
}
