{ ... }: {
  programs.zsh.shellAliases = {
    rebuild = "sudo nixos-rebuild switch";
    upgrade =
      "nix flake update --flake /etc/nixos && sudo nixos-rebuild switch";
    clgarbage = "sudo nix-collect-garbage -d";
  };
}
