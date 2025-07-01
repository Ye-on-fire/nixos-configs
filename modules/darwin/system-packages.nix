{ pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs;
    [ 
      cowsay
      lazygit
    ];
}
