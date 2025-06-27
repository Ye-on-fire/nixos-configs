{
  programs.nixvim.globals.mapleader = " ";
  programs.nixvim.keymaps = [
    {
      key = "jj";
      action = "<esc>";
      mode = "i";
      options.desc = "exit insert mode";
    }
    # Window movement
    {
      key = "<C-j>";
      action = "<C-w>j";
      mode = "n";
      options.desc = "Move down";
    }

    {
      key = "<C-k>";
      action = "<C-w>k";
      mode = "n";
      options.desc = "Move up";
    }

    {
      key = "<C-h>";
      action = "<C-w>h";
      mode = "n";
      options.desc = "Move left";
    }

    {
      key = "<C-l>";
      action = "<C-w>l";
      mode = "n";
      options.desc = "Move right";
    }

    {
      key = "<Leader>e";
      action = "<cmd> Neotree toggle <CR>";
      mode = "n";
      options.desc = "toggle tree";
    }
    
    #telescope
    {
      key = "<Leader>ff";
      action = "<cmd> Telescope fd <CR>";
      mode = "n";
      options.desc = "telescope find file";
    }
  ];
}
