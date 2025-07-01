{ lib, ... }:
{
  imports = [ ./zsh.nix ];
  programs.zsh = {
    shellAliases = lib.mkForce {
      up = "sudo darwin-rebuild switch";
      dup = "nix flake update --flake /etc/nix-darwin && sudo darwin-rebuild switch";
      clg = "sudo nix-collect-garbage -d";
    };
  };
}
