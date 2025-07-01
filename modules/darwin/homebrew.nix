{ ... }:{
  homebrew = {
    #options
    enable = true;
    user = "makoto";
    global = {
      autoUpdate = true;
    };
    onActivation = {
      autoUpdate = true;
      cleanup = "uninstall";
      upgrade = true;
    };
    #packages
    brews = [
      "neovim"
      "starship"
      "blueutil"
      "yazi"
      "sleepwatcher"
      "eza"
      "fzf"
    ];
    casks = [
      "kitty"
      "neovide-app"
      "iina"
      "google-chrome"
      "clion"
      "zen"
      "obsidian"
      "steam"
      "the-unarchiver"
      "warp"
      "zed"
    ];
  };
}
