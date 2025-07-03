{ ... }: {
  programs.zsh = {
    #for mac: setting cargo path for rust
    envExtra = ''
      export EDITOR="nvim"
      export PATH="$PATH:$HOME/.cargo/bin"
    '';
  };
}
