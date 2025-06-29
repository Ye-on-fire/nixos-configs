{ ... }:
{
  programs.nixvim.plugins.none-ls = {
    enable = true;
    sources.formatting.nixfmt.enable = true;
  };
  programs.nixvim.plugins.lsp-format = {
    enable = true;
  };
}
