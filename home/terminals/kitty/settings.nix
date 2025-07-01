{...}:
{
  programs.kitty = {
    shellIntegration.enableZshIntegration = true;
    settings = {
      confirm_os_window_close = 0;
      cursor_trail = "1";
      cursor_trail_decay = "0.1 0.4";
    };
  };
}
