{ config, pkgs, ...}:
{
  imports = [
    ./cmp.nix
    ./lsp.nix
    ./bufferline.nix
    ./lualine.nix
    ./telescope.nix
    ./treesitter.nix
  ];
}
