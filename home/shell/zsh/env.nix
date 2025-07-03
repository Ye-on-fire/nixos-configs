{ ... }: {
  programs.zsh = {
    envExtra = ''
      export EDITOR="nvim"
    '';
  };
}
