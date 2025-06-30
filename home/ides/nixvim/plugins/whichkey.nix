{
  programs.nixvim.plugins.which-key = {
    enable = true;
    settings = {
      triggers = [
        {
          __unkeyed-1 = "<auto>";
          mode = "nisotc";
        }
      ];

      spec = [
        {
          __unkeyed-1 = "<Leader>t";
          group = "Terminal";
          icon = " ";
        }
        {
          __unkeyed-1 = "<Leader>f";
          group = "Telescope";
          icon = " ";
        }
        {
          __unkeyed-1 = "<Leader>l";
          group = "Lazygit";
          icon = " ";
        }
      ];
    };
  };
}
