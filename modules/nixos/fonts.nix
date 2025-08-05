{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    maple-mono.NF-CN
    nerd-fonts.jetbrains-mono
    source-han-sans
    source-han-serif
  ];
}
