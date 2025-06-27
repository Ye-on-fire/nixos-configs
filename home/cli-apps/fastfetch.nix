{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
        padding = {
          top = 4;
          left = 3;
        };
      };

      display = {
        separator = "";
        key.width = 15;
        color = {
          keys = "white";
          title = "cyan";
        };
      };

      modules = [
        {
          key = "╭──────────────────────────────────────────────╮";
          type = "custom";
        }
        {
          key = "   OS";
          type = "os";
          keyColor = "blue";
        }
        {
          key = "   user";
          type = "title";
          keyColor = "red";
        }
        {
          key = "  󰅐 uptime";
          type = "uptime";
          keyColor = "cyan";
        }
        {
          key = "   term";
          type = "terminal";
          format = "{5}";
          keyColor = "yellow";
        }
        {
          key = "    WM";
          type = "wm";
          keyColor = "red";
        }
        {
          key = "   shell";
          type = "shell";
          keyColor = "green";
        }
        {
          key = "  󰍛 cpu";
          type = "cpu";
          format = "{1}";
          keyColor = "white";
        }
        {
          key = "   gpu";
          type = "gpu";
          format = "{2} {3}";
          keyColor = "cyan";
        }
        {
          key = "   memory";
          type = "memory";
          keyColor = "blue";
        }
        {
          key = "  󰓡 swap";
          type = "swap";
          keyColor = "yellow";
        }
        {
          key = "  󰩟 network";
          type = "localip";
          format = "{1} ({4})";
          keyColor = "red";
        }
        {
          key = "╰──────────────────────────────────────────────╯";
          type = "custom";
        }
      ];
    };
  };
}
