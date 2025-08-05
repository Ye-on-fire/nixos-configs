{ ... }: {
  programs.clash-verge = {
    enable = true;
    autoStart = true;
  };
  services.mihomo = {
    tunMode = true;
  };
}
