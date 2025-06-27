{
  programs.nixvim.globals.mapleader = " ";
  programs.nixvim.keymaps = [
    #basic
    {
      key = "jj";
      action = "<esc>";
      mode = "i";
      options.desc = "exit insert mode";
    }

    {
      key = "<Leader>nh";
      action = "<cmd>nohl<CR>";
      mode = "n";
      options.desc = "no hightlight";
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

    #buffers
    {
      key = "]b";
      action = "<cmd> BufferLineCycleNext <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Next buffer";
      };
    }

    {
      key = "[b";
      action = "<cmd> BufferLineCyclePrev <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Previous buffer";
      };
    }

    #Neotree
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

    {
      key = "<Leader>fw";
      action = "<cmd> Telescope live_grep <CR>";
      mode = "n";
      options.desc = "telescope find word";
    }

    {
      key = "<Leader>fb";
      action = "<cmd> Telescope buffers <CR>";
      mode = "n";
      options.desc = "telescope find buffer";
    }
    #flash.nvim
    {
      key = "s";
      action = "<cmd> lua require(\"flash\").jump() <CR>";
      mode = "n";
      options.desc = "flash jump";
    }
  ];
}
