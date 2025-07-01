{ pkgs, ... }:
{
  users.users.makoto = {
    shell = pkgs.zsh;
    home = "/Users/makoto";
    description = "makoto";
  };
}
