{ ... }: {
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    sessionVariables = { EDITOR = "nvim"; };
    envExtra = ''
      export EDITOR="nvim"
    '';
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
      upgrade =
        "nix flake update --flake /etc/nixos && sudo nixos-rebuild switch";
      clgarbage = "sudo nix-collect-garbage -d";
    };
  };
}
