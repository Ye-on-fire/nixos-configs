{ lib ,...}:
{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    sessionVariables = {
      EDITOR = "nvim";
    };
    envExtra = ''
      export EDITOR="nvim"
    '';
    shellAliases = lib.mkDefault {
      up = "sudo nixos-rebuild switch";
      dup = "nix flake update --flake /etc/nixos && sudo nixos-rebuild switch";
      clg = "sudo nix-collect-garbage -d";
    };
  };
}
