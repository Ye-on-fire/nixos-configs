{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    maple-mono.NF-CN  
    nerd-fonts.jetbrains-mono
  ];
}
