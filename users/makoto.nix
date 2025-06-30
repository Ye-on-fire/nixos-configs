{ pkgs, ... }:
{
  users.users.makoto = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "makoto";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
