{ pkgs, ...}:
{
  stylix.fonts = {
    serif = {
      package = pkgs.noto-fonts-cjk-serif;
      name = "Noto Serif CJK SC";
    };
    sansSerif = {
      package = pkgs.noto-fonts-cjk-sans;
      name = "Noto Sans CJK SC";
    };
    monospace = {
      package = pkgs.maple-mono.NF-CN;
      name = "Maple Mono NF CN";
    };
    emoji = {
      package = pkgs.noto-fonts-color-emoji;
      name = "Noto Color Emoji";
    };
    sizes = {
      terminal = 18;
    };
  };
}
