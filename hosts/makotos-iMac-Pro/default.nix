{ pkgs, ... }: {
  # environment.systemPackages = with pkgs;
  #   [ nyancat
  #     cowsay
  #   ];

  # Necessary for using flakes on this system.
  nix.enable = false;

  # Set Git commit hash for darwin-version.
  # system.configurationRevision = self.rev or self.dirtyRev or null;

  system.stateVersion = 6;

  nixpkgs.hostPlatform = "x86_64-darwin";
}
