{ ... }:
{
  programs.nixvim.globals.mapleader = " ";
  programs.nixvim.keymaps = [
    #basic
    {
      key = "jj";
      action = "<esc>";
      mode = "i";
      options.desc = "Exit insert mode";
    }

    {
      key = "<Leader>n";
      action = "<cmd>nohl<CR>";
      mode = "n";
      options.desc = "No highlight";
    }

    {
      key = "<Leader>h";
      action = "<cmd>Alpha<CR>";
      mode = "n";
      options.desc = "Return to Home";
    }

    # Terminal
    {
      key = "<Leader>tn";
      action = "<cmd> tabnew | terminal <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "New tab terminal";
      };
    }

    {
      key = "<Leader>th";
      action = "<cmd> ToggleTerm direction=horizontal <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Horizontal terminal";
      };
    }

    {
      key = "<Leader>tv";
      action = "<cmd>ToggleTerm direction=vertical size=60 <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Vertical terminal";
      };
    }

    {
      key = "<Leader>tf";
      action = "<cmd> ToggleTerm direction=float <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Floating terminal";
      };
    }

    #window split
    {
      key = "|";
      action = "<cmd> vsp <CR>";
      mode = "n";
      options.desc = "split vertical";
    }

    {
      key = "\\";
      action = "<cmd> sp <CR>";
      mode = "n";
      options.desc = "split horizontal";
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

    {
      key = "<Leader>x";
      action = ":bd <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Delete current buffer";
      };
    }

    #Neotree
    {
      key = "<Leader>e";
      action = "<cmd> Neotree toggle <CR>";
      mode = "n";
      options.desc = "Toggle Tree";
    }

    #telescope
    {
      key = "<Leader>ff";
      action = "<cmd> Telescope fd <CR>";
      mode = "n";
      options.desc = "Telescope find file";
    }

    {
      key = "<Leader>fw";
      action = "<cmd> Telescope live_grep <CR>";
      mode = "n";
      options.desc = "Telescope find word";
    }

    {
      key = "<Leader>fb";
      action = "<cmd> Telescope buffers <CR>";
      mode = "n";
      options.desc = "Telescope find buffer";
    }
    #flash.nvim
    {
      key = "s";
      action = ''<cmd> lua require("flash").jump() <CR>'';
      mode = [ "n" "v" ];
      options.desc = "flash jump";
    }
    #lazygit
    {
      key = "<Leader>lg";
      action = "<cmd>LazyGit<CR>";
      mode = [ "n" ];
      options.desc = "Open Lazygit";
    }
  ];
}
