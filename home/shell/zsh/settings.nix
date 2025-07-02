{ ... }: {
  programs.zsh = {
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    sessionVariables = { EDITOR = "nvim"; };
    envExtra = ''
      export EDITOR="nvim"
    '';
  };
}
