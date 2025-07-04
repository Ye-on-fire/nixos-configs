{ ... }: {
  imports = [
    #unused color scheme
    # ./colorscheme.nix
    ./options.nix
    ./keymaps.nix
    ./plugins
  ];
  programs.nixvim = {
    enable = true;
    clipboard.providers.wl-copy.enable = true;
  };
}
