{self,...}:
{
  programs.nixvim.plugins.lsp = {
    enable = true;
    inlayHints = true;
    keymaps = {
      diagnostic = {
        "<leader>E" = "open_float";
        "[" = "goto_prev";
        "]" = "goto_next";
        "<leader>do" = "setloclist";
      };
      lspBuf = {
        "K" = "hover";
        "gD" = "declaration";
        "gd" = "definition";
        "gr" = "references";
        "gI" = "implementation";
        "gy" = "type_definition";
        "<leader>ca" = "code_action";
        "<leader>cr" = "rename";
        "<leader>wl" = "list_workspace_folders";
        "<leader>wr" = "remove_workspace_folder";
        "<leader>wa" = "add_workspace_folder";
      };
    };
    servers={
      # nixd = {
      #   enable = true;
      #   settings = {
      #     options = {
      #       nixos.expr = "(builtins.getFlake (builtins.toString ../../../../.)).nixosConfigurations.nixos-test.options";
      #       home-manager.expr = "(builtins.getFlake (builtins.toString ../../../../.)).nixosConfigurations.nixos-test.options.home-manager.users.type.getSubOptions []";
      #     };
      #   };
      # };
      nil_ls={
        enable = true;
      };
      lua_ls.enable = true;
    };
  };
}
