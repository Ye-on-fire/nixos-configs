{ pkgs, ... }:
let isLinux = pkgs.stdenv.isLinux;
in {
  users.users.makoto = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "makoto";
    extraGroups = if isLinux then [ "networkmanager" "wheel" ] else null;
  };
}
