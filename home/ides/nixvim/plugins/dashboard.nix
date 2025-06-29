{
  programs.nixvim.plugins.alpha = {
    enable = true;
    layout = [
      #title
      {
        opts = {
          hl = "Type";
          position = "center";
        };
        type = "text";
        val = [
          " ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄"
          "█       █  █ █  █       █  █ █  █       █      █       █      █"
          "█   ▄▄▄▄█  █ █  █   ▄▄▄▄█  █ █  █   ▄▄▄▄█  ▄   █   ▄▄▄▄█  ▄   █"
          "█  █  ▄▄█  █▄█  █  █  ▄▄█  █▄█  █  █  ▄▄█ █▄█  █  █  ▄▄█ █▄█  █"
          "█  █ █  █       █  █ █  █       █  █ █  █      █  █ █  █      █"
          "█  █▄▄█ █       █  █▄▄█ █       █  █▄▄█ █  ▄   █  █▄▄█ █  ▄   █"
          "█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█ █▄▄█▄▄▄▄▄▄▄█▄█ █▄▄█"
        ];
      }
      {
        type = "padding";
        val = 1;
      }
      #options
      {
        type = "group";
        val = [
          {
            type = "button";
            val = "  Create New File        ૮(•͈⌔•͈)ა";
            on_press = {
              __raw = "function() vim.cmd('enew') end";
            };
            opts = {
              position = "center";
            };
          }
          {
            type = "button";
            val = "  Telescope Find Word    ૮(•͈⌔•͈)ა";
            opts = {
              position = "center";
            };
            on_press = {
              __raw = "function() vim.cmd('Telescope live_grep') end";
            };
          }
          {
            type = "button";
            val = "  Telescope Find Files   ૮(•͈⌔•͈)ა";
            opts = {
              position = "center";
            };
            on_press = {
              __raw = "function() vim.cmd('Telescope find_files') end";
            };
          }
          {
            type = "button";
            val = "  Telescope Recent Files ૮(•͈⌔•͈)ა";
            opts = {
              position = "center";
            };
            on_press = {
              __raw = "function() vim.cmd('Telescope oldfiles') end";
            };
          }
          {
            type = "button";
            val = "  Quit";
            opts = {
              position = "center";
            };
            on_press = {
              __raw = "function() vim.cmd('qa') end";
            };
          }
        ];
      }
      {
        type = "padding";
        val = 1;
      }
      {
        opts = {
          hl = "Function";
          position = "center";
        };
        type = "text";
        val = [
              "⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣾⣿⠿⠿⠿⣿⣷⣶⣤⣀           "
              "⠀⠀⠀⠀⠀⣰⣾⡿⠟⠉⠁⠀⠀⣠⠶⠒⠙⠛⠿⣿⣷⣄⠀        "
              "⠀⠀⠀⢠⣾⡿⠋⠀⠀⠤⣄⣀⣰⠃⠀⠀⠀⠀⠀⠈⠻⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀"
              "⠀⠀⢠⣿⡿⡡⠖⠋⠙⠲⣄⠐⢻⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣷⠀⠀⠀⠀⠀⠀⠀"
              "⠀⠀⣿⣿⡟⠁⠀⠀⠀⠀⠈⢳⠈⢧⠀⠀⣾⣿⡆⠀⠀⠀⠸⣿⡇⠀⠀⣠⣴⣶⣄"
              "⠀⠀⣿⣿⠃⠀⠀⠀⢀⣀⠀⠘⣿⡿⢷⣄⠘⠛⡃⠀⠰⠀⠀⣿⣇⣴⡾⠟⠋⢹⣿"
              "⠀⠀⢿⣿⡇⠀⠀⠀⢿⣿⡇⠀⢿⣴⣾⡿⠀⠀⠀⠀⠀⠀⢰⡿⠋⠁⠀⠀⠀⢸⣿"
              "⠀⠀⠘⣿⣧⠀⠀⠀⠈⠩⠥⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⢠⡿⠃⠀⠀⠀⠀⠀⣿⡟"
              "⠀⠀⠀⠘⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠽⠁⠀⠀⠀⠀⠀⣾⡿⠁"
              "⠀⠀⠀⠀⠀⣹⣿⣶⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠤⠊⠁⠀⠘⣷⡀⠀⣠⣾⡿⠁⠀"
              "⠀⠀⢀⣴⣾⠿⠋⠀⠉⠉⠛⠀⠐⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣶⡿⠋⠀⠀⠀"
              "⣠⣶⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣇⠀⠀⠀⠀"
              "⢿⣿⣄⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠀⠀⠀⠀"
              "⠀⠙⠿⢿⣶⣶⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀"
              "⠀⠀⠀⠀⠀⠉⣿⣇⢀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣾⣿⠀⠀⠀⠀"
              "⠀⠀⠀⠀⠀⠀⢹⣿⡟⠛⠛⠿⣷⣄⣀⣀⣀⣀⣀⣀⣴⡾⠟⠋⢉⣿⣿⠀⠀⠀⠀"
              "⠀⠀⠀⠀⠀⠀⠀⠻⠿⣶⣶⣶⠿⠿⠿⠿⠿⠿⠻⠿⠿⠷⠶⠶⠿⠟⠁⠀⠀⠀⠀"
        ];
      }
    ];
  };
}

