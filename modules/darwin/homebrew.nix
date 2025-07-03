{ ... }:{
  #Should first install homebrew with the following command
  #/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
      "node"
      "rustup"
      "blueutil"
      "sleepwatcher"
    ];
    casks = [
      "iina"
      "cmake-app"
      "google-chrome"
      "clion"
      "visual-studio-code"
      "zen"
      "obsidian"
      "steam"
      "the-unarchiver"
      "warp"
      "zed"
    ];
  };
}
