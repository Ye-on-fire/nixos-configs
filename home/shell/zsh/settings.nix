{ ... }: {
  programs.zsh = {
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    envExtra = ''
      export EDITOR="nvim"
      export PATH="$PATH:$HOME/.cargo/bin"
    '';
  };
}
