{ pkgs, ... }: {
  imports = [ ./settings.nix ];
  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      mhutchie.git-graph
      jnoortheen.nix-ide
      brettm12345.nixfmt-vscode
      yzhang.markdown-all-in-one
      formulahendry.code-runner
      vscodevim.vim
      llvm-vs-code-extensions.vscode-clangd
      ms-vscode.cmake-tools
      ms-python.python
      mkhl.direnv
    ];
  };
}
