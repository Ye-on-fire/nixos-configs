{ ... }: {
  programs.vscode.profiles.default.userSettings = {
    #disable update
    "update.mode" = "none";
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

    #vscodevim
    "extensions.experimental.affinity" = { "vscodevim.vim" = 1; };
    "vim.easymotion" = true;
    "vim.insearch" = true;
    "vim.useSystemClipboard" = true;
    "vim.useCtrlKeys" = true;
    "vim.hlSearch" = true;
    "vim.leader" = "<Space>";
    "vim.insertModeKeyBindings" = [{
      "before" = [ "j" "j" ];
      "after" = [ "<Esc>" ];
    }];
    "vim.normalModeKeyBindingsNonRecursive" = [{
      "before" = [ "<leader>" "n" ];
      "after" = [ ":nohl" ];
    }];
  };
}
