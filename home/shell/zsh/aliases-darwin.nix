{ ... }: {
  programs.zsh.shellAliases = {
    rebuild = "sudo darwin-rebuild switch";
    upgrade =
      "nix flake update --flake /etc/nix-darwin && sudo darwin-rebuild switch";
    clgarbage = "sudo nix-collect-garbage -d";
  };
}
