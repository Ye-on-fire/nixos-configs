{ ... }: {
  programs.vscode.profiles.default.userSettings = {
    #editor
    "editor.cursorSmoothCaretAnimation" = "on";
    "editor.smoothScrolling" = true;
    "editor.cursorBlinking" = "smooth";
    "editor.fontLigatures" = true;
    "editor.lineNumbers" = "relative";
    "editor.minimap.enabled" = false;
    "editor.formatOnSave" = true;

    "workbench.list.smoothScrolling" = true;
    "workbench.navigationControl.enabled" = false;
    "workbench.layoutControl.enabled" = false;
    "workbench.activityBar.location" = "bottom";

    "window.menuBarVisibility" = "compact";

    "explorer.confirmDelete" = false;

    "terminal.integrated.smoothScrolling" = true;

    #extensions
    #vscode-neovim
    "extensions.experimental.affinity" = { "asvetliakov.vscode-neovim" = 1; };
    "vscode-neovim.compositeKeys" = {
      "jj" = { "command" = "vscode-neovim.escape"; };
    };
    #git graph
    "git.confirmSync" = false;
    "git.enableSmartCommit" = true;
    "git.autofetch" = true;
    #code runner
    "code-runner.runInTerminal" = true;
    "code-runner.saveAllFilesBeforeRun" = true;
    "code-runner.executorMap" = {
      "c" =
        "cd $dir && gcc $fileName -o $fileNameWithoutExt.out -lm && $dir$fileNameWithoutExt.out";
      "cpp" =
        "cd $dir && g++ -std=c++23 $fileName -o $fileNameWithoutExt.out && $dir$fileNameWithoutExt.out";
    };
    #cmake
    "cmake.options.statusBarVisibility" = "compact";
  };
}
