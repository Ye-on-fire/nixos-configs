{ config, pkgs, ... }:
{
  programs.nixvim = {
    opts = {
      number = true;
      relativenumber = true;
      expandtab = true;
      tabstop = 2;
      shiftwidth = 2;
      smartindent = true;
      autoindent = true;
      clipboard = "unnamedplus";
      laststatus = 0;
    };
  };
}
