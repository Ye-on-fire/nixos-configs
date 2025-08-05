{ pkgs, ... }: {
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    shellWrapperName = "y";
    plugins = with pkgs; {
      starship = yaziPlugins.starship;
      full-border = yaziPlugins.full-border;
    };
    initLua = ./init.lua;
  };
}
